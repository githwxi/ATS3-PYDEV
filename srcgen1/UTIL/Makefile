########################################################################
all::
########################################################################
CAT=cat
########################################################################
XATS2PY=\
./../../externs/ATS3/srcgen2/xats2py
RUNTIME=$(XATS2PY)/srcgen1/xshared/runtime
LIB2XATSOPT=$(XATS2PY)/lib/lib2xatsopt_opt0.py
########################################################################
SEP06=\#\#\#\#\#\#
SEP12=$(SEP06)$(SEP06)
########################################################################
LIB2XATSOPTDEV=ats3_pydev_lib2xatsopt.py
########################################################################
# all:: ; \
# echo "Please do 'make lib2xatsoptdev'"
########################################################################
all:: \
lib2xatsoptdev
lib2xatsoptdev:: ; \
printf "import os\n" > $(LIB2XATSOPTDEV) && \
printf "import sys\n" >> $(LIB2XATSOPTDEV) && \
printf "$(SEP12)$(SEP12)$(SEP12)$(SEP12)$(SEP12)$(SEP12).\n" >> $(LIB2XATSOPTDEV)
lib2xatsoptdev:: ; \
printf \
"from DATS.CATS.a3pydev import *\n" >> $(LIB2XATSOPTDEV) && \
printf \
"from DATS.CATS.xstamp0 import *\n" >> $(LIB2XATSOPTDEV) && \
printf \
"from DATS.CATS.xsymbol import *\n" >> $(LIB2XATSOPTDEV) && \
printf \
"from DATS.CATS.filpath import *\n" >> $(LIB2XATSOPTDEV) && \
printf \
"from DATS.CATS.locinfo import *\n" >> $(LIB2XATSOPTDEV) && \
printf \
"from DATS.CATS.lexing0 import *\n" >> $(LIB2XATSOPTDEV) && \
printf \
"from DATS.CATS.staexp1 import *\n" >> $(LIB2XATSOPTDEV) && \
printf \
"from DATS.CATS.dynexp1 import *\n" >> $(LIB2XATSOPTDEV) && \
printf \
"from DATS.CATS.staexp2 import *\n" >> $(LIB2XATSOPTDEV) && \
printf \
"from DATS.CATS.statyp2 import *\n" >> $(LIB2XATSOPTDEV) && \
printf \
"from DATS.CATS.dynexp2 import *\n" >> $(LIB2XATSOPTDEV) && \
printf \
"from DATS.CATS.dynexp3 import *\n" >> $(LIB2XATSOPTDEV) && \
printf "$(SEP12)$(SEP12)$(SEP12)$(SEP12)$(SEP12)$(SEP12).\n" >> $(LIB2XATSOPTDEV)
lib2xatsoptdev:: ; \
printf "## %s\n" "`date`" >> $(LIB2XATSOPTDEV) && \
printf "$(SEP12)$(SEP12)$(SEP12)$(SEP12)$(SEP12)$(SEP12).\n" >> $(LIB2XATSOPTDEV)
lib2xatsoptdev:: ; \
$(CAT) $(RUNTIME)/xats2py_py1emit.py >> $(LIB2XATSOPTDEV) && \
$(CAT) $(RUNTIME)/srcgen1_prelude.py >> $(LIB2XATSOPTDEV) && \
$(CAT) $(RUNTIME)/srcgen1_xatslib.py >> $(LIB2XATSOPTDEV) && \
printf "$(SEP12)$(SEP12)$(SEP12)$(SEP12)$(SEP12)$(SEP12).\n" >> $(LIB2XATSOPTDEV)
lib2xatsoptdev:: ; \
$(CAT) ./../lib/libats3pydev.py >> $(LIB2XATSOPTDEV) && \
printf "$(SEP12)$(SEP12)$(SEP12)$(SEP12)$(SEP12)$(SEP12).\n" >> $(LIB2XATSOPTDEV)
lib2xatsoptdev:: ; $(CAT) $(LIB2XATSOPT) >> $(LIB2XATSOPTDEV) && \
printf "$(SEP12)$(SEP12)$(SEP12)$(SEP12)$(SEP12)$(SEP12).\n" >> $(LIB2XATSOPTDEV)
########################################################################
########################################################################
############################end-of-(Makefile)###########################
########################################################################
########################################################################
