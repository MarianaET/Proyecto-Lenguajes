package analizador;
import static analizador.Token.*;

%%
%class miniPHP
%type Token

ASCII = ("+"|"*"|[\/]|"%"|"-"|"**"|"."|\!|"#"|"$"|"&"|"="|"?"|"¡"|"¿"|"@"|\"|"¨"|"<"|">"|\"|\´|"_"|"~"|":"|",")*
PALABRA = [A-Za-z_][A-Za-z]*
WHITE = [" "\t\r\n]

ASIGNAR = (.|\+)?"=" | "->" | ":"
PHP_INICIO = \<\?[Pp][Hh][Pp]
PHP_FINAL = \?\>
SEPARADOR = ";"|","|"["|"]"
DEFINICION_O = "("
DEFINICION_C = ")"
FUNCION_O = "{"
FUNCION_C = "}"

PR_HALT_COMPILER = "__"[Hh][Aa][Ll][Tt]_[Cc][Oo][Mm][Pp][Ii][Ll][Ee][Rr]\(\)
PR_ABSTRACT = [Aa][Bb][Ss][Tt][Rr][Aa][Cc][Tt]
PR_ARRAY = [Aa][Rr][Rr][Aa][Yy]\(\)
PR_AS = [Aa][Ss]
PR_BREAK = [Br][Rr][Ee][Aa][Kk]
PR_CALLABLE = [Cc][Aa][Ll][Aa][Bb][Ll][Ee]
PR_CATCH = [Cc][Aa][Tt][Cc][Hh]
PR_CLASS = [Cc][Ll][Aa][Ss]
PR_CLONE = [Cc][Ll][Oo][Nn][Ee]
PR_CONST = [Cc][Oo][Nn][Ss][Tt]
PR_CONTINUE = [Cc][Oo][Nn][Tt][Ii][Nn][Uu][Ee]
PR_DECLARE = [Dd][Ee][Cc][Ll][Aa][Rr][Ee]
PR_DEFAULT = [Dd][Ee][Ff][Aa][Uu][Ll][Tt]
PR_DIE = [Dd][Ii][Ee]\(\)
PR_ECHO = [Ee][Cc][Hh][Oo]
PR_EMPTY = [Ee][Mm][Pp][Tt][Yy]\(\)
PR_ENDDECLARE = [Ee][Nn][Dd][Dd][Ee][Cc][Ll][Aa][Rr][Ee]
PR_ENDFOR = [Ee][Nn][Dd][Ff][Oo][Rr]
PR_ENDSWITCH = [Ee][Nn][Dd][Ss][Ww][Ii][Tt][Cc][Hh]
PR_ENDWHILE = [Ee][Nn][Dd][Ww][Hh][Ii][Ll][Ee]
PR_EVAL = [Ee][Vv][Aa][Ll]\(\)
PR_EXIT = [Ee][Xx][Ii][Tt]\(\)
PR_EXTENDS = [Ee][Xx][Tt][Ee][Nn][Dd][Ss]
PR_FINAL = [Ff][Ii][Nn][Aa][Ll]
PR_FINALLY = [Ff][Ii][Nn][Aa][Ll][Ll][Ii]
PR_GLOBAL = [Gg][Ll][Oo][Bb][Aa][Ll]
PR_GOTO = [Gg][Oo][Tt][Oo]
PR_IMPLEMENTS = [Ii][Mm][Pp][Ll][Ee][Mm][Ee][Nn][Tt][Ss]
PR_INCLUDE = [Ii][Nn][Cc][Ll][Uu][Dd][Ee]
PR_INCLUDE_ONCE = [Ii][Nn][Cc][Ll][Uu][Dd][Ee]_[Oo][Nn][Cc][Ee]
PR_INSTANCEOF = [Ii][Nn][Ss][Tt][Aa][Nn][Cc][Ee][Oo][Ff]
PR_INSTEADOF = [Ii][Nn][Ss][Tt][Ee][Aa][Dd][Ee][Oo][Ff]
PR_INTERFACE = [Ii][Nn][Tt][Ee][Rr][Ff][Aa][Cc][Ee]
PR_ISSET = [Ii][Ss][Ss][Ee][Tt]\(\)
PR_LIST = [Ll][Ii][Ss][Tt]\(\)
PR_NAMESPACE = [Nn][Aa][Mm][Ee][Ss][Pp][Aa][Cc][Ee]
PR_NEW = [Nn][Ee][Ww]
PR_PRINT = [Pp][Rr][Ii][Nn][Tt]
PR_PRIVATE = [Pp][Rr][Ii][Vv][Aa][Tt][Ee]
PR_PROTECTED = [Pp][Rr][Oo][Tt][Ee][Cc][Tt][Ee][Dd]
PR_PUBLIC = [Pp][Uu][Bb][Ii][Cc]
PR_REQUIRE = [Rr][Ee][Qq][Uu][Ii][Rr][Ee]
PR_REQUIRE_ONCE = [Rr][Ee][Qq][Uu][Ii][Rr][Ee]"_"[Oo][Nn][Cc][Ee]
PR_RETURN = [Rr][Ee][Tt][Uu][Rr][Nn]
PR_STATIC = [Ss][Tt][Aa][Tt][Ii][Cc]
PR_THROW = [Tt][Hh][Oo][Ww]
PR_TRAIT = [Tt][Rr][Aa][Ii][Tt]
PR_TRY = [Tt][Rr][Yy]
PR_UNSET = [Uu][Nn][Ss][Ee][Tt]\(\)
PR_USE = [Uu][Ss][Ee]
PR_VAR = [Vv][Aa][Rr]
PR_YIELD = [Yy][Ii][Ee][Ll][Dd]

COMENTARIO = "//"({PALABRA}|" "|[0-9]|{ASCII}|","|[\']|"["|"]"|"{"|"}")+
COMENTARIO_MULTILINEA = "/*"({PALABRA}|" "|[0-9]|{ASCII}|{WHITE}|","|[\']|"["|"]"|"{"|"}")+"*"[\/]
COMENTARIO_CONSOLA = "#" ({PALABRA}|" "|[0-9]|{ASCII}|{WHITE}|","|[\']|"["|"]"|"{"|"}")+ "#"

OP_ARITMETICOS = "+"|"*"|"/"|"%"|"-"|"**"
OP_LOGICOS = ([Aa][Nn][Dd])|([Oo][Rr])|([Xx][Oo][Rr])|(\&\&)|(\|\|)|\!
OP_COMPARACION = "=="|("===")|("!=")|("<>")|("!==")|"<"|">"|("<=")|(">=")|("<=>")|("??")

T_BOOL_TRUE = [Tt][Rr][Uu][Ee]
T_BOOL_FALSE = [Ff][Aa][Ll][Ss][Ee]
T_INTEGER = (\+|-)? ( (([1-9][0-9]*)|0) | (0[xX][0-9a-fA-F]+) | (0[0-7]+) | (0[bB][01]+) )                           
T_FLOAT = (\+|-)? ([0-9]+|0)"."([0-9]+|0)([Ee]("+"|"-")?)?[0-9]+      
T_STRING = ((\')(" "|{PALABRA}|{ASCII})+(\') )| ("<<<"(" "|{PALABRA}|{ASCII})+)|((\")(" "|{PALABRA}|{ASCII})+(\"))

IDENTIFICADOR = (\')?(("&")?{PALABRA}|(("$")?{PALABRA}("_")?({PALABRA}|[0-9])*))((".")?{PALABRA})(\')?

VARIABLE = \$(\$)?{PALABRA}+ 

LINE = "__"[Ll][Ii][Nn][Ee]"__"
FILE = __[Ff][Ii][LL][Ee]__
DIR = __[Dd][Ii][Rr]__
FUNCTION = __[Ff][Uu][Nn][Cc][Tt][Ii][Oo][Nn]__
CLASS = __[Cc][Ll][Aa][Ss]__
TRAIT = __[Tt][Rr][Aa][Ii][Tt]__
METHOD = __[Mm][Ee][Tt][Hh][Oo][Dd]__
NAMESPACE = __[Nn][Aa][Mm][Ee][Ss][Pp][Aa][Cc][Ee]__
CLASSNAME = "::"[Cc][Ll][Aa][Ss]

E_IF = [I|i][F|f]
E_ELSEIF = [E|e][L|l][S|s][E|e][I|i][F|f]
E_ELSE = [E|e][L|l][S|s][E|e]
E_WHILE = [W|w][H|h][I|i][L|l][E|e] 
E_DOWHILE = [D|d][O|o]
E_FOREACH = [F|f][O|o][R|r][E|e][A|a][C|c][H|h]
E_FOR = [F|f][O|o][R|r]
E_SWITCH = [S|s][W|w][I|i][T|t][C|c][H|h]

GLOBALS = "$_"[G|g][L|l][O|o][B|b][A|a][L|l][S|s]
SERVER = "$_"[S|s][E|e][R|r][V|v][E|e][R|r]
GET = "$_"[G|g][E|e][T|t]
POST = "$_"[P|p][O|o][S|s][T|t]
FILES = "$_"[F|f][I|i][L|l][E|e][S|s]
REQUEST = "$_"[R|r][E|e][Q|q][U|u][E|e][S|s][T|t]
SESSION = "$_"[S|s][E|e][S|s][S|s][I|i][O|o][N|n]
ENV = "$_"[E|e][N|n][V|v]
COOKIE = "$_"[C|c][O|o][K|k][I|i][E|e]
PHP_ERRORMSG = [P|p][H|h][P|p]_[E|e][R|r][R|r][O|o][R|r][M|m][S|s][G|g]
HTTP_RAW_POST_DATA = "$"[H|h][T|t][T|t][P|p]"_"[R|r][A|a][W|w]_[P|p][O|o][S|s][T|t]"_"[D|d][A|a][T|t][A|a]
HTTP_RESPONSE_HEADER = "$"[H|h][T|t][T|t][P|p]"_"[R|r][E|e][S|s][P|p][O|o][N|n][S|s][E|e]"_"[H|h][E|e][A|a][D|d][E|e][R|r]
ARGC = "$"[A|a][R|r][G|g][C|c]
ARGV = "$"[A|a][R|r][G|g][V|v]

F_ANONIMA = [F|f][U|u][N|n][C|c][T|t][I|i][O|o][N|n]
F_VARIABLE = [Ff][Uu][Nn][Cc][Tt][Ii][Oo][Nn]{WHITE}+{PALABRA}

CAMPOS_DATOS = "$"[Rr][Ee][Cc][Oo][Rr][Dd][Ss][Ee][Tt]\[\'([a-zA-Z_]\w*)\'\]

%{
    public String retornaToken;
%}

%%
{WHITE}  {/*IGNORE*/} 
{SEPARADOR} {retornaToken=yytext(); return Separador;}
{PHP_INICIO}  {retornaToken=yytext(); return SimboloInicio;}
{PHP_FINAL}  {retornaToken=yytext(); return SimboloFin;}
{DEFINICION_O} {retornaToken=yytext(); return AbrirDefinicion;}
{DEFINICION_C} {retornaToken=yytext(); return CerrarDefinicion;}
{FUNCION_O} {retornaToken=yytext(); return AbrirFuncion;}
{FUNCION_C} {retornaToken=yytext(); return CerrarFuncion;}
{COMENTARIO}  {retornaToken=yytext(); return ComentarioDeUnaLinea;}
{COMENTARIO_MULTILINEA}  {retornaToken=yytext(); return ComentarioMultilinea;}
{COMENTARIO_CONSOLA}  {retornaToken=yytext(); return ComentarioTipoConsola;}
{ASIGNAR}  {retornaToken=yytext(); return Asignacion;}
{PR_HALT_COMPILER}  {retornaToken=yytext(); return PalabraReservadaHalt_Compiler;}
{PR_ABSTRACT}  {retornaToken=yytext(); return PalabraReservadaAbstract;}
{PR_ARRAY}  {retornaToken=yytext(); return PalabraReservadaArray;}
{PR_AS}  {retornaToken=yytext();  return PalabraReservadaAs;}
{PR_BREAK}  {retornaToken=yytext(); return PalabraReservadaBreak;}
{PR_CALLABLE}  {retornaToken=yytext(); return PalabraReservadaCallable;}
{PR_CATCH}  {retornaToken=yytext(); return PalabraReservadaCatch;}
{PR_CLASS}  {retornaToken=yytext(); return PalabraReservadaClass;}
{PR_CLONE}  {retornaToken=yytext(); return PalabraReservadaClone;}
{PR_CONST}  {retornaToken=yytext(); return PalabraReservadaConst;}
{PR_CONTINUE}  {retornaToken=yytext(); return PalabraReservadaContinue;}
{PR_DECLARE}  {retornaToken=yytext(); return PalabraReservadaDeclare;}
{PR_DEFAULT}  {retornaToken=yytext(); return PalabraReservadaDefault;}
{PR_DIE}  {retornaToken=yytext(); return PalabraReservadaDie;}
{PR_ECHO}  {retornaToken=yytext(); return PalabraReservadaEcho;}
{PR_EMPTY}  {retornaToken=yytext(); return PalabraReservadaEmpty;}
{PR_ENDFOR} {retornaToken=yytext(); return PalabraReservadaEndFor;}
{PR_ENDSWITCH} {retornaToken=yytext(); return PalabraReservadaEndSwitche;}
{PR_ENDDECLARE}  {retornaToken=yytext(); return PalabraReservadaEndDeclare;}
{PR_ENDWHILE} {retornaToken=yytext(); return PalabraReservadaEndWhile;}
{PR_EVAL}  {retornaToken=yytext(); return PalabraReservadaEval;}
{PR_EXIT}  {retornaToken=yytext(); return PalabraReservadaExit;}
{PR_EXTENDS}  {retornaToken=yytext(); return PalabraReservadaExtends;}
{PR_FINAL}  {retornaToken=yytext(); return PalabraReservadaFinal;}
{PR_FINALLY}  {retornaToken=yytext(); return PalabraReservadaFinally;}
{PR_GLOBAL}  {retornaToken=yytext(); return PalabraReservadaGlobal;}
{PR_GOTO}  {retornaToken=yytext(); return PalabraReservadaGoto;}
{PR_IMPLEMENTS}  {retornaToken=yytext(); return PalabraReservadaImplements;}
{PR_INCLUDE}  {retornaToken=yytext(); return PalabraReservadaInclude;}
{PR_INCLUDE_ONCE}  {retornaToken=yytext(); return PalabraReservadaInclueOnce;}
{PR_INSTANCEOF}  {retornaToken=yytext(); return PalabraReservadaInstanceOf;}
{PR_INSTEADOF}  {retornaToken=yytext(); return PalabraReservadaInsteadOf;}
{PR_INTERFACE}  {retornaToken=yytext(); return PalabraReservadaInterface;}
{PR_ISSET}  {retornaToken=yytext(); return PalabraReservadaIsset;}
{PR_LIST}  {retornaToken=yytext(); return PalabraReservadaList;}
{PR_NAMESPACE}  {retornaToken=yytext(); return PalabraReservadaNamesPace;}
{PR_NEW}  {retornaToken=yytext(); return PalabraReservadaNew;}
{PR_PRINT}  {retornaToken=yytext(); return PalabraReservadaPrint;}
{PR_PRIVATE}  {retornaToken=yytext(); return PalabraReservadaPrivate;}
{PR_PROTECTED}  {retornaToken=yytext(); return PalabraReservadaProtected;}
{PR_PUBLIC}  {retornaToken=yytext(); return PalabraReservadaPublic;}
{PR_REQUIRE}  {retornaToken=yytext(); return PalabraReservadaRequire;}
{PR_REQUIRE_ONCE}  {retornaToken=yytext(); return PalabraReservadaRequireOnce;}
{PR_RETURN}  {retornaToken=yytext(); return PalabraReservadaReturn;}
{PR_STATIC}  {retornaToken=yytext(); return PalabraReservadaStatic;}
{PR_THROW}  {retornaToken=yytext(); return PalabraReservadaThrow;}
{PR_TRAIT}  {retornaToken=yytext(); return PalabraReservadaTrait;}
{PR_TRY}  {retornaToken=yytext(); return PalabraReservadaTry;}
{PR_UNSET}  {retornaToken=yytext(); return PalabraReservadaUset;}
{PR_USE}  {retornaToken=yytext(); return PalabraReservadaUse;}
{PR_VAR}  {retornaToken=yytext(); return PalabraReservadaVar;}
{PR_YIELD}  {retornaToken=yytext(); return PalabraReservadaYield;}
{OP_ARITMETICOS}  {retornaToken=yytext(); return OperadorAritmetico;}
{OP_LOGICOS}  {retornaToken=yytext(); return OperadorLogico;}
{OP_COMPARACION}  {retornaToken=yytext(); return OperadorDeComparacion;}
{T_BOOL_TRUE}  {retornaToken=yytext(); return TipoBooleanoVerdadero;}
{T_BOOL_FALSE}  {retornaToken=yytext(); return TipoBooleanoFalso;}
{T_INTEGER}  {retornaToken=yytext(); return TipoEntero;}                       
{T_FLOAT}  {retornaToken=yytext(); return TipoReal;}  
{T_STRING}  {retornaToken=yytext(); return TipoCadena;}
{IDENTIFICADOR}  {retornaToken=yytext(); return Identificador;}
{VARIABLE}  {retornaToken=yytext(); return Variable;}
{LINE}  {retornaToken=yytext(); return ConstanteLine;}
{FILE}  {retornaToken=yytext(); return ConstanteFile;}
{DIR}  {retornaToken=yytext(); return ConstanteDir;}
{FUNCTION}  {retornaToken=yytext(); return ConstanteFunction;}
{CLASS}  {retornaToken=yytext(); return ConstanteClass;}
{TRAIT} {retornaToken=yytext(); return ConstanteTrait;}
{METHOD}  {retornaToken=yytext(); return ConstanteMethod;}
{NAMESPACE}  {retornaToken=yytext(); return ConstanteNamespace;}
{CLASSNAME}  {retornaToken=yytext(); return ConstanteClassname;}
{E_IF}  {retornaToken=yytext(); return EstructuraIf;}
{E_ELSEIF}  {retornaToken=yytext(); return EstructuraElseIf;}
{E_ELSE}  {retornaToken=yytext(); return EstructuraElse;}
{E_WHILE} {retornaToken=yytext(); return EstructuraWhile;}
{E_DOWHILE}  {retornaToken=yytext(); return EstructuraDoWhile;}
{E_FOREACH}  {retornaToken=yytext(); return EstructuraForeach;}
{E_FOR}  {retornaToken=yytext(); return EstructuraFor;}
{E_SWITCH}  {retornaToken=yytext();  return EstructuraSwitch;}
{GLOBALS}  {retornaToken=yytext(); return VariablePredeterminadaGlobals;}
{SERVER}  {retornaToken=yytext(); return VariablePredeterminadaServer;}
{GET}  {retornaToken=yytext(); return VariablePredeterminadaGet;}
{POST}  {retornaToken=yytext(); return VariablePredeterminadaPost;}
{FILES}  {retornaToken=yytext(); return VariablePredeterminadaFiles;}
{REQUEST} {retornaToken=yytext(); return VariablePredeterminadaRequest;}
{SESSION}  {retornaToken=yytext(); return VariablePredeterminadaSession;}
{ENV} {retornaToken=yytext(); return VariablePredeterminadaEnv;}
{COOKIE}  {retornaToken=yytext(); return VariablePredeterminadaCookie;}
{PHP_ERRORMSG}  {retornaToken=yytext(); return VariablePredeterminadaPhpErrormsg;}
{HTTP_RAW_POST_DATA}  {retornaToken=yytext(); return VariablePredeterminadaHttpRawPostData;}
{HTTP_RESPONSE_HEADER}  {retornaToken=yytext(); return VariablePredeterminadaHttpResponseHeader;}
{ARGC}  {retornaToken=yytext(); return VariablePredeterminadaArgc;}
{ARGV} { retornaToken=yytext(); return VariablePredeterminadaArgv;}
{F_ANONIMA}  {return FuncionAnonima;}
{F_VARIABLE}  {retornaToken=yytext(); return FuncionVariable;}
{CAMPOS_DATOS}  {retornaToken=yytext(); return CampoDeAccesoABaseDeDatos;}
. {return Error;}