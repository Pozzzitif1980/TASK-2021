# TASK-2021

Bash-скрипт, котрий зчитує навантаження на ЦПУ і кількість вільного місця на диску. Дані у вигляді наступного JSON-об”єкту { ‘author’:‘<github login>’, ‘cpu’: ‘15%’, ‘free_disk_space’: ‘1024’, ‘generated_date’: ‘2021-07-15 11:35:43’ } заносяться до файлу file.json (зразок файлу додається) за допомогою CRON-задачі, яка виконується кожні 3 хвилини.
