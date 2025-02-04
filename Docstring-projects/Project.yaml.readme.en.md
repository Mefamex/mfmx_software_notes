<h1 align="center" id="yaml-tr"> YAML DOCSTRING [TR]</h1>


> [UPPER DIRECTORY (Docstring-Project) ](readme.md)

<hr>
<br/>

* YAML and TOML files are commonly used to store configuration data.
* While YAML provides a human-readable format, TOML offers a simpler configuration file format and is often preferred for defining project dependencies and settings.

<h3> project.yaml </h3>

``` yaml
name: "Project Name" # Full name of your project
display_name: "Project Name (User Friendly)" # Name to be shown in user interface (optional)
description: "Brief and Concise Project Description" # A short summary explaining what your project does and its purpose
long_description: | # Detailed project description (in Markdown format)
    This project ... (detailed explanations here) ...
    Features:
        - ...
        - ...
version: "1.0.0" # Project version (Semantic Versioning recommended)
release_date: "2024-05-16" # Release date of the latest version
authors: # Project developers
    - name: "Developer 1 Name"
        email: "developer1@email.com"
        github: "username1" # Github username (optional)
    - name: "Developer 2 Name"
        email: "developer2@email.com"
        linkedin: "username2" # LinkedIn username (optional)
maintainers: # Project maintainers (if different from developers)
    - name: "Maintainer 1 Name"
        email: "maintainer1@email.com"
repository: # Project source code repository
    type: "git" # Repository type (git, svn etc.)
    url: "https://github.com/user/project" # Repository URL
    branch: "main" # Main branch name
license: # Project license
    name: "MIT License" # License name
    url: "https://opensource.org/licenses/MIT" # License URL
keywords: # Keywords describing the project
    - "c#"
    - ".net"
    - "project"
    - "example"
technologies: # Technologies and tools used
    programming_languages:
        - "C#"
        - "JavaScript" # (If applicable)
    frameworks:
        - ".NET 6"
        - "ASP.NET Core" # (If applicable)
    libraries: # Used libraries
        - "Newtonsoft.Json"
        - "Entity Framework Core"
    tools: # Development tools
        - "Visual Studio 2022"
        - "Git"
build: # How to build the project
    instructions: | # Build instructions (in Markdown format)
        1. Run `dotnet restore` command.
        2. Run `dotnet build` command.
    scripts: # Build scripts (optional)
        - "build.sh" # (For Linux/macOS)
        - "build.bat" # (For Windows)
installation: # How to install the project
    instructions: | # Installation instructions (in Markdown format)
        1. Install required dependencies.
        2. Clone the project.
        3. Configure settings.
    dependencies: # Dependencies
        - ".NET 6 Runtime"
        - "SQL Server" # (If applicable)
usage: # How to use the project
    instructions: | # Usage instructions (in Markdown format)
        1. Run the application.
        2. ... (usage steps) ...
    examples: # Usage examples (optional)
        - |
            ```csharp
            // Example code
            ...
            ```
documentation: # Project documentation
    url: "https://github.com/user/project/wiki" # Wiki or other documentation URL
    api_reference: "https://github.com/user/project/api" # API reference documentation URL (optional)
contributing: # How to contribute to the project
    guidelines: "CONTRIBUTING.md" # Contribution guidelines file
    code_of_conduct: "CODE_OF_CONDUCT.md" # Code of conduct file (optional)
testing: # How to test the project
    instructions: | # Testing instructions
        1. Set up test environment.
        2. Run `dotnet test` command.
    coverage: "https://codecov.io/gh/user/project" # Test coverage report (optional)
deployment: # How to deploy the project
    instructions: | # Deployment instructions
        1. Upload to server.
        2. ... (deployment steps) ...
    environments: # Deployment environments
        - name: "Development"
            url: "https://dev.example.com"
        - name: "Production"
            url: "https://prod.example.com"
contact: # Contact information
    email: "info@example.com"
    twitter: "@example" # (optional)
    discord: "https://discord.gg/example" # (optional)
```