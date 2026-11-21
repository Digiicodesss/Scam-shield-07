const dns = require('dns');
const origLookup = dns.lookup;

dns.lookup = function(hostname, options, callback) {
  if (typeof options === 'function') {
    callback = options;
    options = {};
  }
  if (hostname === 'api.vercel.com' || hostname === 'vercel.com') {
    if (options && options.all) {
      return process.nextTick(() => callback(null, [{ address: '216.198.79.1', family: 4 }]));
    }
    return process.nextTick(() => callback(null, '216.198.79.1', 4));
  }
  return origLookup.call(dns, hostname, options, callback);
};
