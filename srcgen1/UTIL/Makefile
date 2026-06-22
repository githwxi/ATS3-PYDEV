########################################################################
CAT=cat
########################################################################
XATS2PY=./../../xassets/PY/xats2py
RUNTIME=./../../xassets/PY/xats2py/runtime
########################################################################
SEP06=\#\#\#\#\#\#
SEP12=$(SEP06)$(SEP06)
########################################################################
LIB2XATSOPT=ats3_pydev_lib2xatsopt
########################################################################
lib2xatsopt:: ; \
printf "import os\n" > $(LIB2XATSOPT).py && \
printf "import sys\n" >> $(LIB2XATSOPT).py && \
printf \
"sys.path.append('./..')\n" >> $(LIB2XATSOPT).py && \
printf \
"from DATS.CATS.a3pydev import *\n" >> $(LIB2XATSOPT).py && \
printf \
"from DATS.CATS.xstamp0 import *\n" >> $(LIB2XATSOPT).py && \
printf \
"from DATS.CATS.xsymbol import *\n" >> $(LIB2XATSOPT).py && \
printf \
"from DATS.CATS.filpath import *\n" >> $(LIB2XATSOPT).py && \
printf \
"from DATS.CATS.locinfo import *\n" >> $(LIB2XATSOPT).py && \
printf \
"from DATS.CATS.lexing0 import *\n" >> $(LIB2XATSOPT).py && \
printf \
"from DATS.CATS.staexp1 import *\n" >> $(LIB2XATSOPT).py && \
printf \
"from DATS.CATS.dynexp1 import *\n" >> $(LIB2XATSOPT).py && \
printf \
"from DATS.CATS.staexp2 import *\n" >> $(LIB2XATSOPT).py && \
printf \
"from DATS.CATS.statyp2 import *\n" >> $(LIB2XATSOPT).py && \
printf \
"from DATS.CATS.dynexp2 import *\n" >> $(LIB2XATSOPT).py && \
printf \
"from DATS.CATS.dynexp3 import *\n" >> $(LIB2XATSOPT).py && \
printf "$(SEP12)$(SEP12)$(SEP12)$(SEP12)$(SEP12)$(SEP12).\n" >> $(LIB2XATSOPT).py
lib2xatsopt:: ; \
printf "## %s\n" "`date`" >> $(LIB2XATSOPT).py && \
printf "$(SEP12)$(SEP12)$(SEP12)$(SEP12)$(SEP12)$(SEP12).\n" >> $(LIB2XATSOPT).py
lib2xatsopt:: ; \
$(CAT) $(RUNTIME)/xats2py_py1emit.py >> $(LIB2XATSOPT).py && \
$(CAT) $(RUNTIME)/srcgen1_prelude.py >> $(LIB2XATSOPT).py && \
$(CAT) $(RUNTIME)/srcgen1_xatslib.py >> $(LIB2XATSOPT).py && \
printf "$(SEP12)$(SEP12)$(SEP12)$(SEP12)$(SEP12)$(SEP12).\n" >> $(LIB2XATSOPT).py
lib2xatsopt:: ; \
$(CAT) ./../lib/libats3pydev.py >> $(LIB2XATSOPT).py && \
printf "$(SEP12)$(SEP12)$(SEP12)$(SEP12)$(SEP12)$(SEP12).\n" >> $(LIB2XATSOPT).py
lib2xatsopt:: ; \
$(CAT) $(XATS2PY)/lib2xatsopt_opt0.py >> $(LIB2XATSOPT).py && \
printf "$(SEP12)$(SEP12)$(SEP12)$(SEP12)$(SEP12)$(SEP12).\n" >> $(LIB2XATSOPT).py
########################################################################
############################end-of-(Makefile)###########################
########################################################################
