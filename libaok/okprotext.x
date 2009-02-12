
/*
 * Compile this file with xmlrpcc --- then it's available to XML/RPC
 * interfaces.  Can't do the whole of okprot.x this way, since that would
 * pull in xpub.x.  However, xpub.x cannot be compiled with xmlrpcc, since
 * the XML stuff happens later in the build process.
 */

enum ok_xstatus_typ_t {
  OK_STATUS_OK = 0,
  OK_STATUS_PUBERR = 1,
  OK_STATUS_NOSUCHCHILD = 2,
  OK_STATUS_ERR = 3,
  OK_STATUS_DEADCHILD = 4,
  OK_STATUS_NOMORE = 5,
  OK_STATUS_BADFD = 6,
  OK_STATUS_DUP = 7,
  OK_STATUS_BADWAKEUP = 8,
  OK_STATUS_UNAVAIL = 9,
  OK_STATUS_UNKNOWN_OPTION = 10
};


enum ok_leak_checker_cmd_t {
     OK_LEAK_CHECKER_NONE = 0,
     OK_LEAK_CHECKER_ENABLE = 1,
     OK_LEAK_CHECKER_DISABLE = 2,
     OK_LEAK_CHECKER_RESET = 3,
     OK_LEAK_CHECKER_REPORT = 4
};

union ok_xstatus_t switch (ok_xstatus_typ_t status) 
{
 case OK_STATUS_OK:
   void;
 default:
   string error<>;
};
