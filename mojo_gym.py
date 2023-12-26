import time
import subprocess
from pathlib import Path

from rich.layout import Layout
from rich.live import Live


EXERCISES_FOLDER = Path('exercises')

LESSONS = [
    {
        'folder': 'intro',
        'files': [
            'intro.mojo',
        ]
    },
    {
        'folder': 'variables',
        'files': [
            'variables1.mojo',
            'variables2.mojo',
            'variables3.mojo',
            'variables4.mojo',
            'variables5.mojo',
        ]
    },
    {
        'folder': 'functions',
        'files': [
            'functions1.mojo',
            'functions2.mojo',
            'functions3.mojo',
            'functions4.mojo',
            'functions5.mojo',
        ]
    },
    {
        'folder': 'value_ownership',
        'files': [
            'mutability1.mojo',
            'mutability2.mojo',
            'ownership1.mojo',
            'ownership2.mojo',
            'ownership3.mojo',
        ]
    },
    {
        'folder': 'structs',
        'files': [
            'structs1.mojo',
            'structs2.mojo',
        ]
    }
]


def is_done(filename: str) -> bool:
    with open(filename, 'r') as f:
        return '# I AM NOT DONE' not in f.read()


def compile_and_run(filename: Path) -> (bool, str):
    mojo_run_result = subprocess.run(['mojo', 'run', filename], check=False, capture_output=True)
    if mojo_run_result.returncode == 0:
        output = mojo_run_result.stdout.decode()
    else:
        output = mojo_run_result.stderr.decode()
    
    return mojo_run_result.returncode == 0, output


def main():
    layout = Layout()
    layout.split_column(
        Layout(name='upper'),
        Layout(name='lower')
    )
    layout['lower'].size = None
    layout['lower'].ratio = 4
    layout['lower'].update('Here you will see output of exercises.')
    layout['upper'].update('Welcome to [red]Mojo Gym[/]!')
    with Live(layout, refresh_per_second=2, screen=True):
        try:
            for lesson in LESSONS:
                files = lesson['files']
                file_index = 0
                while file_index < len(files):
                    filepath = EXERCISES_FOLDER / lesson['folder'] / files[file_index]
                    layout['upper'].update(f'Current exercise [red]{filepath}[/]. Proceed to file and follow instructions.')
                    if filepath.exists():
                        is_ok, output = compile_and_run(filepath)
                        if is_ok:
                            layout['lower'].update(f'[green]Pass[/]. Remove "I AM NOT DONE" to continue to the next exercise. Output:\n\n{output}')
                            if is_done(filepath):
                                file_index += 1
                        else:
                            layout['lower'].update(f'[red]Failed[/]. Output:\n\n{output}')
                    time.sleep(1)

            layout['upper'].update('[red]Congratulations![/] You have finished all exercises. Press Ctrl+C to exit.')
            layout['lower'].update('')
            while True:
                pass
        except KeyboardInterrupt:
            pass

if __name__ == '__main__':
    main()
