@echo off
setlocal

REM
set EXE="C:\Users\rhalim\OneDrive - Philip Morris International\Documents\Projects\iSMSOverdue.InboundInvoice\bin\x64\Release\iSMSOverdue.InboundInvoice.exe"

%EXE% importcsv ^
  --dbconnection_main="C:\args\Overdue\Config\overdue_db_dev_main_inbound.txt" ^
  --dbconnection="C:\args\Overdue\Config\overdue_db_dev.txt" ^
  --filequery_main="C:\args\Overdue\Query\inbound_invoice_counter.txt" ^
  --filequery="C:\args\Overdue\Query\inbound_invoice.txt" ^
  --jobname="overdue-inbound_invoice" ^
  --csvinbound="C:\args\Overdue\Inbound\Invoice" ^
  --filekey="C:\args\Overdue\Config\key.txt" ^
  --fileupload="C:\args\Overdue\Config\fileupload.txt" ^
  --s3bucket="C:\args\Overdue\Config\s3_bucket.csv" ^
  --logger="C:\args\Overdue\Config\nlog_inbound_invoice.config"

endlocal