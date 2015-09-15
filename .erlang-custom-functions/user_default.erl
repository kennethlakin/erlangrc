-module(user_default).
-export([l_all/1]).

l_all(Mods) when is_list(Mods) ->
  lists:foldl(fun(Mod, A) -> 
                  Ret=[{Mod, shell_default:l(Mod)}],
                  lists:append(A, Ret)
              end, [], Mods);
l_all(Mod) ->
  l_all([Mod]).
