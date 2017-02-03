/*
 Copyright (c) 2007 - 2008 Eric J. Feminella <eric@ericfeminella.com>
 All rights reserved.

 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is furnished
 to do so, subject to the following conditions:

 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
 INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
 PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
 HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
 OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
 SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

 @internal
 */

package services
{
    import flash.data.SQLResult;
    import flash.errors.SQLError;

    /**
     *
     * <code>ISQLResponder</code> defines the contract for classes
     * which must provide a mechanism for handling asynchronous
     * <code>SQLService</code> callbacks.
     *
     * <p>
     * Conceptually <code>ISQLResponder</code> is very similar to that
     * of the <code>mx.rpc.IResponder</code> interface, however the
     * signature of the operations defined by <code>ISQLResponder</code>
     * are slightly different in that they are specific to Adobe AIR
     * types (<code>SQLResult</code> and <code>SQLError</code>)
     * </p>
     *
     * @see flash.data.SQLResult
     * @see flash.errors.SQLError
     * @see mx.rpc.IResponder
     *
     */
    public interface ISQLResponder
    {
        /**
         *
         * Handles a <code>SQLService</code> invocation asynchronous
         * <code>result</code>
         *
         * @param the service invocation SQLResult instance
         *
         */
        function result(evt:SQLResult) : void;

        /**
         *
         * Handles a <code>SQLService</code> invocation asynchronous
         * <code>fault</code>
         *
         * @param the service invocation SQLError instance
         *
         */
        function fault(error:SQLError) : void;
    }
}