/*
 * Copyright 2007-2011 the original author or authors.
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
package org.springextensions.actionscript.ioc.factory.config {

	import flash.system.ApplicationDomain;
	import flash.errors.IllegalOperationError;
	
	import org.springextensions.actionscript.ioc.factory.IApplicationDomainAware;

	public class BaseApplicationDomainAwareObjectPostProcessor implements IObjectPostProcessor, IApplicationDomainAware {
		
		public function BaseApplicationDomainAwareObjectPostProcessor() {
			super();
		}

		public function postProcessBeforeInitialization(object:*, objectName:String):* {
			throw new IllegalOperationError("Not implemented in base class");
		}

		public function postProcessAfterInitialization(object:*, objectName:String):* {
			throw new IllegalOperationError("Not implemented in base class");
		}

		private var _applicationDomain:ApplicationDomain;
		public function get applicationDomain():ApplicationDomain {
			return _applicationDomain;
		}

		public function set applicationDomain(value:ApplicationDomain):void {
			_applicationDomain = value;
		}
	}
}