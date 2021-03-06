% Generated by roxygen2 (4.0.1): do not edit by hand
\name{MapExpressionNodes}
\alias{AllExpressionNodes}
\alias{AnyExpressionNode}
\alias{FlattenExpression}
\alias{MapExpressionLeafs}
\alias{MapExpressionNodes}
\alias{MapExpressionSubtrees}
\alias{expressionGraph}
\alias{replaceSubtreeAt}
\alias{subtreeAt}
\alias{subtrees}
\title{Common higher-order functions for transforming R expressions}
\usage{
MapExpressionNodes(f, expr, functions = TRUE, inners = FALSE,
  leafs = TRUE)

MapExpressionLeafs(f, expr)

MapExpressionSubtrees(f, expr)

FlattenExpression(expr)

subtrees(expr, functions = FALSE, inners = TRUE, leafs = TRUE)

expressionGraph(expr)

AllExpressionNodes(p, expr)

AnyExpressionNode(p, expr)

subtreeAt(expr, index)

replaceSubtreeAt(expr, index, replacement)
}
\arguments{
\item{f}{The function to apply.}

\item{functions}{Whether to apply \code{f} to the function symbols
of \code{expr}. Defaults to \code{TRUE}.}

\item{inners}{Whether to apply \code{f} to the inner subtrees of
\code{expr}. Defaults to \code{FALSE}.}

\item{leafs}{Wheter to apply \code{f} to the leafs of \code{expr}.
Defaults to \code{TRUE}.}

\item{p}{The predicate to check.}

\item{expr}{The expression to transform.}

\item{index}{An in-order subtree index starting from \code{0} (the root).}

\item{replacement}{An expression.}
}
\value{
The transformed expression.
}
\description{
\code{MapExpressionNodes} transforms an expression \code{expr} by
replacing every node in the tree with the result of applying a function
\code{f}. The parameters \code{functions}, \code{inners}, and \code{leafs}
control if \code{f} should be applied to the function symbols, inner
subtrees, and leafs of \code{expr}, respectively.
\code{MapExpressionLeafs} and \code{MapExpressionSubtrees} are shorthands
for calls to \code{MapExpressionNodes}.
\code{expr}.
an expression \code{expr}.
\code{expr}, given as list of nodes and and list of vertices. Each
vertex is represented as a pair of indices into the list of nodes.
\code{AllExpressionNodes} checks if all nodes in the tree of \code{expr}
satisfy the predicate \code{p} (\code{p} returns \code{TRUE} for every node).
This function short-cuts returning \code{FALSE} as soon as a node that
does not satisfy \code{p} is encountered.
\code{AnyExpressionNode} checks if any node in the tree of \code{expr}
satisfies the predicate \code{p}. This function short-cuts returning
\code{TRUE} as soon as a node that satisfies \code{p} is encountered.
\code{subtreeAt} returns the subtree at \code{index}.
\code{replaceSubtreeAt} replaces the subtree at \code{index} with
\code{replacement} and returns the result.
}

