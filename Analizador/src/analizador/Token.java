/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package analizador;

/**
 *
 * @author Usuario
 */
public enum Token { 
    SimboloInicio, SimboloFin, AvanceDeLinea, RetornoDeCarro, TabulacionHorizontal, TabulacionVertical, Escape, AvanceDePagina, Asignacion,
PalabraReservadaHalt_Compiler, PalabraReservadaAbstract, PalabraReservadaArray, PalabraReservadaAs, PalabraReservadaBreak, PalabraReservadaCallable, 
PalabraReservadaCatch, PalabraReservadaClass, PalabraReservadaClone, PalabraReservadaConst, PalabraReservadaContinue, PalabraReservadaDeclare, 
PalabraReservadaDefault, PalabraReservadaDie, PalabraReservadaDo, PalabraReservadaEcho, PalabraReservadaEmpty, PalabraReservadaEndDeclare, 
PalabraReservadaEval, PalabraReservadaExit, PalabraReservadaExtends, PalabraReservadaFinal, PalabraReservadaFinally, PalabraReservadaGlobal,
PalabraReservadaGoto, PalabraReservadaImplements, PalabraReservadaInclude, PalabraReservadaInclueOnce, PalabraReservadaInstanceOf, 
PalabraReservadaInsteadOf, PalabraReservadaInterface,PalabraReservadaIsset, PalabraReservadaList, PalabraReservadaNamesPace, 
PalabraReservadaNew, PalabraReservadaPrint, PalabraReservadaPrivate, PalabraReservadaProtected, PalabraReservadaPublic, PalabraReservadaRequire, 
PalabraReservadaRequireOnce, PalabraReservadaReturn, PalabraReservadaStatic, PalabraReservadaThrow, PalabraReservadaTrait, PalabraReservadaTry, 
PalabraReservadaUset, PalabraReservadaUse, PalabraReservadaVar, PalabraReservadaYield, OperadorAritmetico, OperadorLogico, OperadorDeComparacion,
TipoBooleanoVerdadero, TipoBooleanoFalso, TipoEntero, TipoReal, TipoCadena, Identificador, Variable, ConstanteLine, ConstanteFile, 
ConstanteDir, ConstanteFunction, ConstanteClass, ConstanteTrait, ConstanteMethod, ConstanteNamespace, ConstanteClassname, EstructuraIf, 
EstructuraElseIf, EstructuraElse, EstructuraWhile, EstructuraDoWhile, EstructuraFor, EstructuraForeach, EstructuraSwitch , 
VariablePredeterminadaGlobals, VariablePredeterminadaServer, VariablePredeterminadaGet, VariablePredeterminadaPost, VariablePredeterminadaFiles, 
VariablePredeterminadaRequest, VariablePredeterminadaSession, VariablePredeterminadaEnv, VariablePredeterminadaCookie, VariablePredeterminadaPhpErrormsg, 
VariablePredeterminadaHttpRawPostData, VariablePredeterminadaHttpResponseHeader, VariablePredeterminadaArgc, VariablePredeterminadaArgv, FuncionAnonima, 
FuncionVariable, FuncionDevolver, FuncionDefinidaPorUsuario, ComentarioDeUnaLinea, ComentarioMultilinea, ComentarioTipoConsola, CampoDeAccesoABaseDeDatos, 
Error, Separador, PalabraReservadaEndFor, PalabraReservadaEndWhile, PalabraReservadaEndSwitche, AbrirDefinicion, CerrarDefinicion, AbrirFuncion, CerrarFuncion
}