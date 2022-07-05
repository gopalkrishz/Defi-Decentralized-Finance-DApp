export const idlFactory = ({ IDL }) => {
  return IDL.Service({
    'compound' : IDL.Func([], [], ['oneway']),
    'currentBalence' : IDL.Func([], [IDL.Float64], ['query']),
    'topUp' : IDL.Func([IDL.Float64], [], ['oneway']),
    'withdraw' : IDL.Func([IDL.Float64], [], ['oneway']),
  });
};
export const init = ({ IDL }) => { return []; };
