const myFunction = require('./index.js');
const testCases = require('./testCases.js');

describe('myFunction', () => {
  it('is a function', () => {
    expect(typeof myFunction).toBe('function');
  });
  describe('Passes Example ./testCases.js', () => {
    it.each(testCases)('given %p, expected %p', (input, expected) => {
      expect(myFunction(...input)).toBe(expected);
    });
  });
});
