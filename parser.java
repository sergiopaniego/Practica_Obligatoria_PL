
//----------------------------------------------------
// The following code was generated by CUP v0.11b 20160615 (GIT 4ac7450)
//----------------------------------------------------

import java_cup.runtime.*;
import java_cup.runtime.XMLElement;

/** CUP v0.11b 20160615 (GIT 4ac7450) generated parser.
  */
@SuppressWarnings({"rawtypes"})
public class parser extends java_cup.runtime.lr_parser {

 public final Class getSymbolContainer() {
    return sym.class;
}

  /** Default constructor. */
  @Deprecated
  public parser() {super();}

  /** Constructor which sets the default scanner. */
  @Deprecated
  public parser(java_cup.runtime.Scanner s) {super(s);}

  /** Constructor which sets the default scanner. */
  public parser(java_cup.runtime.Scanner s, java_cup.runtime.SymbolFactory sf) {super(s,sf);}

  /** Production table. */
  protected static final short _production_table[][] = 
    unpackFromStrings(new String[] {
    "\000\042\000\002\002\004\000\002\002\004\000\002\002" +
    "\003\000\002\003\004\000\002\005\007\000\002\007\005" +
    "\000\002\006\006\000\002\006\004\000\002\004\003\000" +
    "\002\004\003\000\002\004\003\000\002\010\004\000\002" +
    "\010\003\000\002\011\005\000\002\011\006\000\002\011" +
    "\007\000\002\011\005\000\002\012\003\000\002\012\005" +
    "\000\002\016\003\000\002\016\005\000\002\013\005\000" +
    "\002\013\003\000\002\014\003\000\002\014\003\000\002" +
    "\014\003\000\002\014\003\000\002\014\003\000\002\015" +
    "\006\000\002\015\005\000\002\015\003\000\002\015\003" +
    "\000\002\015\003\000\002\015\003" });

  /** Access to production table. */
  public short[][] production_table() {return _production_table;}

  /** Parse-action table. */
  protected static final short[][] _action_table = 
    unpackFromStrings(new String[] {
    "\000\077\000\010\012\007\013\005\014\004\001\002\000" +
    "\004\004\ufff7\001\002\000\004\004\ufff8\001\002\000\012" +
    "\002\uffff\012\007\013\005\014\004\001\002\000\004\004" +
    "\ufff9\001\002\000\004\004\014\001\002\000\004\002\012" +
    "\001\002\000\004\002\000\001\002\000\012\002\ufffe\012" +
    "\ufffe\013\ufffe\014\ufffe\001\002\000\004\005\015\001\002" +
    "\000\010\012\007\013\005\014\004\001\002\000\006\006" +
    "\022\011\021\001\002\000\004\004\020\001\002\000\006" +
    "\006\ufffa\011\ufffa\001\002\000\010\012\007\013\005\014" +
    "\004\001\002\000\004\007\024\001\002\000\012\002\ufffd" +
    "\012\ufffd\013\ufffd\014\ufffd\001\002\000\014\004\025\012" +
    "\007\013\005\014\004\027\030\001\002\000\006\005\070" +
    "\015\071\001\002\000\016\004\ufff5\010\ufff5\012\ufff5\013" +
    "\ufff5\014\ufff5\027\ufff5\001\002\000\016\004\025\010\066" +
    "\012\007\013\005\014\004\027\030\001\002\000\014\004" +
    "\045\005\037\024\043\025\044\026\041\001\002\000\004" +
    "\004\033\001\002\000\006\011\034\016\035\001\002\000" +
    "\006\011\ufff0\016\ufff0\001\002\000\004\004\036\001\002" +
    "\000\016\004\ufff4\010\ufff4\012\ufff4\013\ufff4\014\ufff4\027" +
    "\ufff4\001\002\000\006\011\uffef\016\uffef\001\002\000\014" +
    "\004\045\005\037\024\043\025\044\026\041\001\002\000" +
    "\022\006\uffeb\011\uffeb\016\uffeb\017\uffeb\020\uffeb\021\uffeb" +
    "\022\uffeb\023\uffeb\001\002\000\022\006\uffe0\011\uffe0\016" +
    "\uffe0\017\uffe0\020\uffe0\021\uffe0\022\uffe0\023\uffe0\001\002" +
    "\000\016\016\063\017\061\020\057\021\055\022\056\023" +
    "\060\001\002\000\022\006\uffe2\011\uffe2\016\uffe2\017\uffe2" +
    "\020\uffe2\021\uffe2\022\uffe2\023\uffe2\001\002\000\022\006" +
    "\uffe1\011\uffe1\016\uffe1\017\uffe1\020\uffe1\021\uffe1\022\uffe1" +
    "\023\uffe1\001\002\000\024\005\046\006\uffe3\011\uffe3\016" +
    "\uffe3\017\uffe3\020\uffe3\021\uffe3\022\uffe3\023\uffe3\001\002" +
    "\000\014\004\045\005\037\024\043\025\044\026\041\001" +
    "\002\000\020\006\uffee\011\uffee\017\061\020\057\021\055" +
    "\022\056\023\060\001\002\000\006\006\052\011\051\001" +
    "\002\000\014\004\045\005\037\024\043\025\044\026\041" +
    "\001\002\000\022\006\uffe5\011\uffe5\016\uffe5\017\uffe5\020" +
    "\uffe5\021\uffe5\022\uffe5\023\uffe5\001\002\000\020\006\uffed" +
    "\011\uffed\017\061\020\057\021\055\022\056\023\060\001" +
    "\002\000\014\004\045\005\037\024\043\025\044\026\041" +
    "\001\002\000\014\004\uffe8\005\uffe8\024\uffe8\025\uffe8\026" +
    "\uffe8\001\002\000\014\004\uffe7\005\uffe7\024\uffe7\025\uffe7" +
    "\026\uffe7\001\002\000\014\004\uffe9\005\uffe9\024\uffe9\025" +
    "\uffe9\026\uffe9\001\002\000\014\004\uffe6\005\uffe6\024\uffe6" +
    "\025\uffe6\026\uffe6\001\002\000\014\004\uffea\005\uffea\024" +
    "\uffea\025\uffea\026\uffea\001\002\000\022\006\uffec\011\uffec" +
    "\016\uffec\017\061\020\057\021\055\022\056\023\060\001" +
    "\002\000\016\004\ufff1\010\ufff1\012\ufff1\013\ufff1\014\ufff1" +
    "\027\ufff1\001\002\000\016\006\065\017\061\020\057\021" +
    "\055\022\056\023\060\001\002\000\022\006\uffe4\011\uffe4" +
    "\016\uffe4\017\uffe4\020\uffe4\021\uffe4\022\uffe4\023\uffe4\001" +
    "\002\000\012\002\ufffc\012\ufffc\013\ufffc\014\ufffc\001\002" +
    "\000\016\004\ufff6\010\ufff6\012\ufff6\013\ufff6\014\ufff6\027" +
    "\ufff6\001\002\000\014\004\045\005\037\024\043\025\044" +
    "\026\041\001\002\000\014\004\045\005\037\024\043\025" +
    "\044\026\041\001\002\000\016\016\073\017\061\020\057" +
    "\021\055\022\056\023\060\001\002\000\016\004\ufff3\010" +
    "\ufff3\012\ufff3\013\ufff3\014\ufff3\027\ufff3\001\002\000\006" +
    "\006\075\011\051\001\002\000\004\016\076\001\002\000" +
    "\016\004\ufff2\010\ufff2\012\ufff2\013\ufff2\014\ufff2\027\ufff2" +
    "\001\002\000\004\004\100\001\002\000\006\006\ufffb\011" +
    "\ufffb\001\002\000\004\002\001\001\002" });

  /** Access to parse-action table. */
  public short[][] action_table() {return _action_table;}

  /** <code>reduce_goto</code> table. */
  protected static final short[][] _reduce_table = 
    unpackFromStrings(new String[] {
    "\000\077\000\010\002\010\003\005\004\007\001\001\000" +
    "\002\001\001\000\002\001\001\000\010\002\100\003\005" +
    "\004\007\001\001\000\002\001\001\000\004\005\012\001" +
    "\001\000\002\001\001\000\002\001\001\000\002\001\001" +
    "\000\002\001\001\000\006\004\016\006\015\001\001\000" +
    "\002\001\001\000\002\001\001\000\002\001\001\000\004" +
    "\004\076\001\001\000\004\007\022\001\001\000\002\001" +
    "\001\000\010\004\030\010\026\011\025\001\001\000\002" +
    "\001\001\000\002\001\001\000\006\004\030\011\066\001" +
    "\001\000\006\013\041\015\037\001\001\000\004\012\031" +
    "\001\001\000\002\001\001\000\002\001\001\000\002\001" +
    "\001\000\002\001\001\000\002\001\001\000\006\013\063" +
    "\015\037\001\001\000\002\001\001\000\002\001\001\000" +
    "\004\014\053\001\001\000\002\001\001\000\002\001\001" +
    "\000\002\001\001\000\010\013\046\015\037\016\047\001" +
    "\001\000\004\014\053\001\001\000\002\001\001\000\006" +
    "\013\052\015\037\001\001\000\002\001\001\000\004\014" +
    "\053\001\001\000\006\013\061\015\037\001\001\000\002" +
    "\001\001\000\002\001\001\000\002\001\001\000\002\001" +
    "\001\000\002\001\001\000\004\014\053\001\001\000\002" +
    "\001\001\000\004\014\053\001\001\000\002\001\001\000" +
    "\002\001\001\000\002\001\001\000\010\013\046\015\037" +
    "\016\073\001\001\000\006\013\071\015\037\001\001\000" +
    "\004\014\053\001\001\000\002\001\001\000\002\001\001" +
    "\000\002\001\001\000\002\001\001\000\002\001\001\000" +
    "\002\001\001\000\002\001\001" });

  /** Access to <code>reduce_goto</code> table. */
  public short[][] reduce_table() {return _reduce_table;}

  /** Instance of action encapsulation class. */
  protected CUP$parser$actions action_obj;

  /** Action encapsulation object initializer. */
  protected void init_actions()
    {
      action_obj = new CUP$parser$actions(this);
    }

  /** Invoke a user supplied parse action. */
  public java_cup.runtime.Symbol do_action(
    int                        act_num,
    java_cup.runtime.lr_parser parser,
    java.util.Stack            stack,
    int                        top)
    throws java.lang.Exception
  {
    /* call code in generated class */
    return action_obj.CUP$parser$do_action(act_num, parser, stack, top);
  }

  /** Indicates start state. */
  public int start_state() {return 0;}
  /** Indicates start production. */
  public int start_production() {return 1;}

  /** <code>EOF</code> Symbol index. */
  public int EOF_sym() {return 0;}

  /** <code>error</code> Symbol index. */
  public int error_sym() {return 1;}


/** Cup generated class to encapsulate user supplied action code.*/
@SuppressWarnings({"rawtypes", "unchecked", "unused"})
class CUP$parser$actions {
  private final parser parser;

  /** Constructor */
  CUP$parser$actions(parser parser) {
    this.parser = parser;
  }

  /** Method 0 with the actual generated action code for actions 0 to 300. */
  public final java_cup.runtime.Symbol CUP$parser$do_action_part00000000(
    int                        CUP$parser$act_num,
    java_cup.runtime.lr_parser CUP$parser$parser,
    java.util.Stack            CUP$parser$stack,
    int                        CUP$parser$top)
    throws java.lang.Exception
    {
      /* Symbol object for return from actions */
      java_cup.runtime.Symbol CUP$parser$result;

      /* select the action based on the action number */
      switch (CUP$parser$act_num)
        {
          /*. . . . . . . . . . . . . . . . . . . .*/
          case 0: // PROGRAM ::= PART PROGRAM 
            {
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("PROGRAM",0, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-1)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 1: // $START ::= PROGRAM EOF 
            {
              Object RESULT =null;
		int start_valleft = ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-1)).left;
		int start_valright = ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-1)).right;
		Object start_val = (Object)((java_cup.runtime.Symbol) CUP$parser$stack.elementAt(CUP$parser$top-1)).value;
		RESULT = start_val;
              CUP$parser$result = parser.getSymbolFactory().newSymbol("$START",0, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-1)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          /* ACCEPT */
          CUP$parser$parser.done_parsing();
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 2: // PROGRAM ::= PART 
            {
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("PROGRAM",0, ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 3: // PART ::= TYPE RESTPART 
            {
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("PART",1, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-1)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 4: // RESTPART ::= ident left_parenthesis LISTPARAM right_parenthesis BLQ 
            {
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("RESTPART",3, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-4)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 5: // BLQ ::= left_bracket SENTLIST right_bracket 
            {
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("BLQ",5, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-2)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 6: // LISTPARAM ::= LISTPARAM comma TYPE ident 
            {
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("LISTPARAM",4, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-3)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 7: // LISTPARAM ::= TYPE ident 
            {
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("LISTPARAM",4, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-1)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 8: // TYPE ::= void_token 
            {
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("TYPE",2, ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 9: // TYPE ::= int_token 
            {
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("TYPE",2, ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 10: // TYPE ::= float_token 
            {
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("TYPE",2, ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 11: // SENTLIST ::= SENTLIST SENT 
            {
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("SENTLIST",6, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-1)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 12: // SENTLIST ::= SENT 
            {
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("SENTLIST",6, ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 13: // SENT ::= TYPE LID semicolon 
            {
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("SENT",7, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-2)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 14: // SENT ::= ident equal EXP semicolon 
            {
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("SENT",7, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-3)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 15: // SENT ::= ident left_parenthesis LEXP right_parenthesis semicolon 
            {
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("SENT",7, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-4)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 16: // SENT ::= return_token EXP semicolon 
            {
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("SENT",7, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-2)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 17: // LID ::= ident 
            {
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("LID",8, ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 18: // LID ::= LID comma ident 
            {
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("LID",8, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-2)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 19: // LEXP ::= EXP 
            {
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("LEXP",12, ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 20: // LEXP ::= LEXP comma EXP 
            {
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("LEXP",12, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-2)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 21: // EXP ::= EXP OP EXP 
            {
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("EXP",9, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-2)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 22: // EXP ::= FACTOR 
            {
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("EXP",9, ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 23: // OP ::= addition_sign 
            {
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("OP",10, ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 24: // OP ::= substraction_sign 
            {
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("OP",10, ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 25: // OP ::= multiplication_sign 
            {
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("OP",10, ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 26: // OP ::= slash 
            {
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("OP",10, ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 27: // OP ::= percent 
            {
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("OP",10, ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 28: // FACTOR ::= ident left_parenthesis LEXP right_parenthesis 
            {
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("FACTOR",11, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-3)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 29: // FACTOR ::= left_parenthesis EXP right_parenthesis 
            {
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("FACTOR",11, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-2)), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 30: // FACTOR ::= ident 
            {
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("FACTOR",11, ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 31: // FACTOR ::= constint 
            {
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("FACTOR",11, ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 32: // FACTOR ::= constfloat 
            {
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("FACTOR",11, ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 33: // FACTOR ::= constlit 
            {
              Object RESULT =null;

              CUP$parser$result = parser.getSymbolFactory().newSymbol("FACTOR",11, ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), ((java_cup.runtime.Symbol)CUP$parser$stack.peek()), RESULT);
            }
          return CUP$parser$result;

          /* . . . . . .*/
          default:
            throw new Exception(
               "Invalid action number "+CUP$parser$act_num+"found in internal parse table");

        }
    } /* end of method */

  /** Method splitting the generated action code into several parts. */
  public final java_cup.runtime.Symbol CUP$parser$do_action(
    int                        CUP$parser$act_num,
    java_cup.runtime.lr_parser CUP$parser$parser,
    java.util.Stack            CUP$parser$stack,
    int                        CUP$parser$top)
    throws java.lang.Exception
    {
              return CUP$parser$do_action_part00000000(
                               CUP$parser$act_num,
                               CUP$parser$parser,
                               CUP$parser$stack,
                               CUP$parser$top);
    }
}

}
