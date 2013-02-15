/*
 * Copyright 2007-2010 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.springextensions.actionscript.ioc.factory.xml {
	
	import org.springextensions.actionscript.ioc.IObjectDefinition;
	import org.springextensions.actionscript.ioc.factory.xml.parser.support.XMLObjectDefinitionsParser;
	
	/**
	 * Interface to be implemented by custom object definition parsers, used in a namespace handler.
	 * @docref extensible_xml_authoring.html#coding_an_iobjectdefinitionparser_implementation
	 * @author Christophe Herreman
	 */
	public interface IObjectDefinitionParser {
		
		/**
		 * Parses the given xml node into an IObjectDefinition and registers the object definition
		 * with the given parser/context.
		 */
		function parse(node:XML, context:XMLObjectDefinitionsParser):IObjectDefinition;
		
	}
 }