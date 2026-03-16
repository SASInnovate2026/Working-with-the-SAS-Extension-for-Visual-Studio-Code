/* Churn demo - SAS data */
libname churn "/workshop/_VSCODE_DEMO/Data" ;

/* Churn demo - Parquet data */
libname churn_pq parquet "/workshop/_VSCODE_DEMO/Data" ;

/* Churn data - import CSV */
proc import file="/workshop/_VSCODE_DEMO/Data/subscriptions.csv" out=subscriptions dbms=csv replace ;
run ;

/* Churn demo - JSON Data */
libname rev json "/workshop/_VSCODE_DEMO/Data/reviews.json" ;
proc datasets lib=rev ;
quit ;