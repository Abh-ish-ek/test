import { defineConfig } from '@playwright/test';
require('dotenv').config();

export default defineConfig({
  use: {
    browserName: 'chromium',
    headless: true,
    screenshot: 'only-on-failure',
    video: 'retain-on-failure',
    baseURL: 'http://localhost:3000',
  },
});
