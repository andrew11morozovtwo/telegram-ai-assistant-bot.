# Changelog

Все значимые изменения в этом проекте будут документированы в этом файле.

Формат основан на [Keep a Changelog](https://keepachangelog.com/ru/1.0.0/),
и этот проект придерживается [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- GitHub Actions CI/CD pipeline
- Docker multi-architecture builds
- Security scanning with Trivy
- Code coverage reporting
- Comprehensive documentation

### Changed
- Improved error handling and logging
- Enhanced Docker configuration
- Updated dependencies to latest versions

## [1.0.0] - 2025-01-19

### Added
- Initial release of Telegram AI Assistant Bot
- OpenAI GPT integration for text processing
- OpenAI Vision API for image analysis
- OpenAI Whisper for audio transcription
- Document processing support (PDF, DOCX, PPTX, XLSX, TXT, CSV, MD, LOG)
- Automatic API key fallback system
- CSV logging of all interactions
- Docker support with Docker Compose
- Cross-platform startup scripts (Windows, Linux, Mac)
- Environment configuration with .env files
- Comprehensive error handling
- Support for polls and various message types
- URL processing in text messages

### Features
- **Text Processing**: Natural language conversations with GPT
- **Image Analysis**: AI-powered image description and analysis
- **Document Processing**: Extract and analyze text from various document formats
- **Audio Transcription**: Convert voice messages to text using Whisper
- **Fallback System**: Automatic switching to backup API keys when main key runs out
- **Logging**: Complete interaction history in CSV format
- **Docker Support**: Easy deployment with Docker and Docker Compose
- **Multi-platform**: Works on Windows, Linux, and macOS

### Technical Details
- Python 3.9+ support
- Modern dependency management
- Environment-based configuration
- Comprehensive error handling
- Logging and monitoring
- Docker containerization
- CI/CD pipeline ready

## [0.1.0] - 2024-12-01

### Added
- Initial development version
- Basic Telegram bot functionality
- OpenAI API integration
- Simple text processing

---

## Legend

- **Added** for new features
- **Changed** for changes in existing functionality
- **Deprecated** for soon-to-be removed features
- **Removed** for now removed features
- **Fixed** for any bug fixes
- **Security** for vulnerability fixes
