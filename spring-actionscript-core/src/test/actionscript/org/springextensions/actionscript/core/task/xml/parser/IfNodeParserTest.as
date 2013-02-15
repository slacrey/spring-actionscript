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
package org.springextensions.actionscript.core.task.xml.parser {

	import flexunit.framework.TestCase;
	
	import org.as3commons.lang.ClassUtils;
	import org.springextensions.actionscript.ioc.IObjectDefinition;
	import org.springextensions.actionscript.ioc.factory.config.RuntimeObjectReference;
	import org.springextensions.actionscript.ioc.factory.xml.parser.support.XMLObjectDefinitionsParser;

	public class IfNodeParserTest extends TestCase {
		
		private var _testParser:IfNodeParser;
		
		private var _ifXML:XML = <if id="ifTest"><condition><ref>conditionRef</ref></condition></if>;

		public function IfNodeParserTest(methodName:String=null) {
			super(methodName);
			_testParser = new IfNodeParser();
		}
		
		public function testParse():void {
			var result:IObjectDefinition = _testParser.parse(_ifXML, new XMLObjectDefinitionsParser());
			assertEquals("org.springextensions.actionscript.core.task.support.IfElseBlock", result.className);
			assertEquals(1,result.constructorArguments.length);
			assertEquals(RuntimeObjectReference,ClassUtils.forInstance(result.constructorArguments[0]));
			assertEquals("conditionRef",RuntimeObjectReference(result.constructorArguments[0]).objectName);
		}

	}
}