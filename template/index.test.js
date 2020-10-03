const myFunction = require('./index.js');
const { testTable, tableName } = require('./testCases.js');

describe('myFunction', () => {
  it('is a function', () => {
    expect(typeof myFunction).toBe('function');
  });
  describe('Passes Example ./testCases.js', () => {
    it.each(testTable)(tableName, (...params) => {
      const input = params.slice(0, -1);
      const expected = params.slice(-1);
      expect(myFunction(...input)).toEqual(...expected);
    });
  });
});
