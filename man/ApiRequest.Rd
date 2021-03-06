\name{ApiRequest}
\alias{ApiRequest}
\title{ApiRequest}
\usage{
ApiRequest(body = "", func.name = "", interval.seconds = 2,
  max.attempts = 1, print.attempts = FALSE)
}
\arguments{
  \item{report.description}{JSON report description}

  \item{func.name}{the name of the Adobe Analytics API
  function that we are calling}

  \item{interval.seconds}{Time to wait between request
  attempts (defaults to 2 seconds)}

  \item{max.attempts}{Max number of attempts to make the
  request (defaults to 1, this is only increased for
  GetReport)}

  \item{print.attempts}{if set to TRUE, this will print
  attempt numbers to the console}
}
\value{
list of available evars
}
\description{
Internal function - Calls the API and gets valid evars for
specified params
}
\seealso{
Other internal: \code{\link{BuildHeader}};
\code{\link{BuildInnerBreakdownsRecursively}};
\code{\link{ParseFallout}}; \code{\link{ParseOvertime}};
\code{\link{ParsePathing}}; \code{\link{ParseRanked}};
\code{\link{ParseTrended}}
}

