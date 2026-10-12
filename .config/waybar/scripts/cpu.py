"""Stream CPU usage and tooltip details to Waybar once a minute."""

import json
import os
from pathlib import Path
import sys
import time

INTERVAL = 60


def cpu_times():
    # Guest times are already included in user/nice; do not count them twice.
    values = [int(value) for value in Path('/proc/stat').read_text().splitlines()[0].split()[1:9]]
    return sum(values), values[3] + values[4]


def temperature():
    # Discover by driver and label, since hwmon numbering can change at boot.
    for hwmon in sorted(Path('/sys/class/hwmon').glob('hwmon*')):
        try:
            if (hwmon / 'name').read_text().strip() != 'coretemp':
                continue
            for label in hwmon.glob('temp*_label'):
                if label.read_text().strip().startswith('Package id'):
                    value = float(label.with_name(label.name.replace('_label', '_input')).read_text())
                    return f'{value / 1000:.0f}°C'
        except (OSError, ValueError):
            continue
    return 'Unavailable'


def frequency():
    values = []
    for line in Path('/proc/cpuinfo').read_text().splitlines():
        if line.startswith('cpu MHz'):
            values.append(float(line.split(':', 1)[1]))
    return f'{sum(values) / len(values) / 1000:.2f} GHz' if values else 'Unavailable'


def sample(previous):
    current = cpu_times()
    total = current[0] - previous[0]
    idle = current[1] - previous[1]
    usage = max(0, min(100, round(100 * (total - idle) / total))) if total > 0 else 0
    loads = ' / '.join(f'{value:.2f}' for value in os.getloadavg())
    tooltip = (
        f'CPU usage: {usage}%\n'
        f'Temperature: {temperature()}\n'
        f'Average frequency: {frequency()}\n'
        f'Load average (1 / 5 / 15 min): {loads}'
    )
    return current, {'text': f'{usage}%', 'tooltip': tooltip}


def main():
    previous = cpu_times()
    # Take a short initial sample so startup does not show a lifetime average.
    time.sleep(1)
    while True:
        previous, output = sample(previous)
        print(json.dumps(output), flush=True)
        if '--once' in sys.argv:
            return
        time.sleep(INTERVAL)


if __name__ == '__main__':
    try:
        main()
    except (BrokenPipeError, KeyboardInterrupt):
        pass
