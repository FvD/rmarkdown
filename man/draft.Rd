% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/draft.R
\name{draft}
\alias{draft}
\title{Create a new document based on a template}
\usage{
draft(file, template, package = NULL, create_dir = "default", edit = TRUE)
}
\arguments{
\item{file}{File name for the draft}

\item{template}{Template to use as the basis for the draft. This is either
the full path to a template directory or the name of a template directory
within the \code{rmarkdown/templates} directory of a package.}

\item{package}{(Optional) Name of package where the template is located.}

\item{create_dir}{\code{TRUE} to create a new directory for the document
(the "default" setting leaves this beahvior up to the creator of the
template).}

\item{edit}{\code{TRUE} to edit the template immediately}
}
\value{
The file name of the new document (invisibly)
}
\description{
Create (and optionally edit) a draft of an R Markdown document based on a
template.
}
\details{
The \code{draft} function creates new R Markdown documents based on
  templates that are either located on the filesystem or within an R package.
  The template and it's supporting files will be copied to the location
  specified by \code{file}.
}
\note{
An R Markdown template consists of a directory that contains a
  description of the template, a skeleton Rmd file used as the basis for new
  documents, and optionally additional supporting files that are provided
  along with the skeleton (e.g. a logo graphic).

  If the template directory is contained within a package then it should be
  located at \code{inst/rmarkdown/templates}. For example, a package named
  \pkg{pubtools} that wanted to provide a template named
  \code{quarterly_report} would need to provide the following files within
  the \code{pubtools/inst/rmarkdown/templates} directory:

  \code{quarterly_report/template.yaml} \cr
  \code{quarterly_report/skeleton/skeleton.Rmd} \cr

  The \code{template.yaml} file should include a \code{name} field. If you
  want to ensure that a new directory is always created for a given template,
  then you can add the \code{create_dir} field to the \code{template.yaml}
  file. For example:

  \code{create_dir: true} \cr

  The \code{skeleton/skeleton.Rmd} file should include the initial contents
  you want for files created from this template. Additional files can be
  added to the \code{skeleton} directory, for example:

  \code{skeleton/logo.png} \cr

  These files will automatically be copied to the directory containing the
  new R Markdown draft.
}
\examples{
\dontrun{

rmarkdown::draft("Q4Report.Rmd",
                 template="/opt/rmd/templates/quarterly_report")

rmarkdown::draft("Q4Report.Rmd",
                 template="quarterly_report", package="pubtools")
}
}

