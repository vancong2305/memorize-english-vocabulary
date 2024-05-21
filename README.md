# Memorize English Vocabulary

This application helps you learn English vocabulary easily.

## Features

- Easy-to-use interface for learning and memorizing English words.
- Automatically generate Java files for your project using batch files.
- Structured and efficient workflow for rapid development.

## Why do I put Batch Files in the project?
### `create.bat`
#### Reason for use

The `create.bat` file uses the provided parameter to create Java files with the specified name, following a predefined template. This ensures that all necessary files for a new component are created and ready for implementation. To streamline and speed up the coding process, i use batch files to automate the creation of Java files. This helps in maintaining a consistent project structure and saves time by reducing manual effort.


#### How to use?


To use the `create.bat` file, follow these steps:

1. Open your command prompt and navigate to the directory containing the `create.bat` file.
2. Use the following command structure: `create.bat <parameter>`
3. Replace `<parameter>` with the desired name for your Java classes.

#### Example:

1. Navigate to the directory containing the `create.bat` file.
2. Run the command: `create.bat Word`
3. Press Enter.

This will generate the following files in the appropriate package:

- `WordApi.java`
- `WordDto.java`
- `WordEntity.java`
- `WordRepository.java`
- `WordService.java`

Each file will be initialized with the basic structure and boilerplate code, saving you time and ensuring consistency across your project.
