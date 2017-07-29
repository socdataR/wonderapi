#' Convert List to XML
#'
#' Can convert list or other object to an xml object using xmlNode
#' @title List to XML
#' @param item list
#' @param tag xml tag
#' @return xmlNode
#' @noRd
#' @author David LeBauer, Carl Davidson, Rob Kooper
list_to_xml <- function(item, tag) {
  # just a textnode, or empty node with attributes
  if(typeof(item) != 'list') {
    if (length(item) > 1) {
      xml <- xmlNode(tag)
      for (name in names(item)) {
        xmlAttrs(xml)[[name]] <- item[[name]]
      }
      return(xml)
    } else {
      return(xmlNode(tag, item))
    }
  }

  # create the node
  if (identical(names(item), c("text", ".attrs"))) {
    # special case a node with text and attributes
    xml <- xmlNode(tag, item[['text']])
  } else {
    # node with child nodes
    xml <- xmlNode(tag)
    for(i in 1:length(item)) {
      if (names(item)[i] != ".attrs") {
        xml <- append.xmlNode(xml, list_to_xml(item[[i]], names(item)[i]))
      }
    }
  }

  # add attributes to node
  attrs <- item[['.attrs']]
  for (name in names(attrs)) {
    xmlAttrs(xml)[[name]] <- attrs[[name]]
  }
  return(xml)
}
