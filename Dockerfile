FROM ruby:3.2-slim

# Install system dependencies
RUN apt-get update && apt-get install -y \
    curl \
    git \
    build-essential \
    nodejs \
    npm \
    vim \
    nano \
    wget \
    ca-certificates \
    gnupg \
    && rm -rf /var/lib/apt/lists/*

# Install Node.js 20.x (LTS)
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs \
    && rm -rf /var/lib/apt/lists/*

# Install Shopify CLI
RUN npm install -g @shopify/cli @shopify/theme

# Install global npm packages for development
RUN npm install -g \
    yarn \
    pnpm \
    sass \
    prettier \
    eslint

# Install Ruby gems for theme development
RUN gem install \
    bundler \
    theme-check \
    shopify_api

# Set working directory
WORKDIR /workspace

# Keep container running
CMD ["/bin/bash"]
