function a = limits(n,a)

% LIMITS Funcion de transferencia limite simetrica.
%
%   A = LIMITS(N,A)
%     N - SxQ Matriz de vectores de entrada.
%     A - SxQ Matriz de vectores de salida inicial.
%   Salida:  1 cuando N es positivo,
%            A cuando N es cero,
%           -1 cuando N es negativo.
%
%   Ejemplo: n = -10:0.1:10;
%            a = zeros(1,201);
%            a = limits(n,a);
%            plot(n,a)
%            title('Limite Simetrico')
%
%   LIMITS('delta') devuelve 'none'.
%   LIMITS('init') devuelve el nombre de la funcion de inicializacion.
%   LIMITS('name') devuelve el nombre de la funcion de transferencia.
%   LIMITS('output') devuelve el rango de salida de esta funcion.
%
%   Mirar a demas: LIMIT.

% Realizado por Antonio F. Urdiales Urdiales.
% Version 1.1 (9-5-96)

if nargin ~= 2, error('Numeros de argumentos de entrada no validos.'); end

if isstr(n)
  if strcmp(lower(n),'delta')
    a = 'none';
  elseif strcmp(lower(n),'init')
    a = 'rands';
  elseif strcmp(lower(n),'name')
    a = 'Limite Simetrico';
  elseif strcmp(lower(n),'output')
    a = [-1 1];
  else
    error('Parametro no valido.')
  end
else
  a = (n > 0)+(n < 0)*(-1)+(n == 0).*a;
end
