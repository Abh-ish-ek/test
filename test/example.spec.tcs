import { test, expect } from '@playwright/test';

test('home page test', async ({ page }) => {
  await page.goto('http://localhost:3000');
  const content = await page.textContent('body');
  expect(content).toBe('Hello World!');
});
