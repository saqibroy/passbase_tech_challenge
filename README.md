# Virtual Currency Transfer App 💰

A secure web application for transferring virtual currencies (USD, EUR, GBP) between users, built with Ruby on Rails.

## Features ✨
- 🔒 Secure user authentication
- 💸 Multi-currency transactions
- ⚡ Real-time balance calculation
- 📈 Transaction history tracking

## Installation 🚀

### Requirements
- Ruby 2.6
- Rails 5.2
- PostgreSQL

# Clone repository
git clone https://github.com/yourusername/currency-transfer-app.git
cd currency-transfer-app

# Install dependencies
bundle install

# Setup database
rails db:setup
rails db:seed

# Start server
rails server
\`\`\`

### Environment Setup
1. Create `.env` file:
\`\`\`bash
cp .env.example .env
\`\`\`
2. Add PostgreSQL credentials to `.env`:
\`\`\`env
DATABASE_USERNAME=your_username
DATABASE_PASSWORD=your_password
\`\`\`

## Tech Stack 🔧
- **Backend**: Ruby on Rails 5
- **Database**: PostgreSQL
- **Authentication**: BCrypt password hashing
- **Frontend**: Bootstrap CSS

## Usage Guide 📖
1. **Register** or use test credentials:
   - Email: `user@example.com`
   - Password: `password`

2. **Dashboard**:
   - View balances and transaction history
   - Create new transactions

3. **Make Transaction**:
   - Select recipient from dropdown
   - Choose currencies and amount
   - Confirm transaction

## Security Notes 🔒
- Environment variables excluded via `.gitignore`
- Password encryption with BCrypt
- Atomic database transactions## Future Roadmap 🚧

## Future Roadmap 🚧
- **Live Exchange Rates**: Integrate with a currency API for real-time rates
- **Two-Factor Authentication (2FA)**: Add an extra layer of security
- **Admin Dashboard**: Manage users and transactions
- **API Endpoints**: Build a RESTful API for mobile integration
- **GraphQL Support**: Modern API alternative

---

## Contributing 🤝

Contributions are welcome! Here's how to get started:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/your-feature`)
3. Commit your changes (`git commit -m 'Add some feature'`)
4. Push to the branch (`git push origin feature/your-feature`)
5. Open a pull request

---

Developed by [Saqib Sohail](mailto:sohail.cpp@gmail.com)  
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-blue?logo=linkedin)](https://linkedin.com/in/saqibroy)  
[![GitHub](https://img.shields.io/badge/GitHub-View-green?logo=github)](https://github.com/saqibroy)
