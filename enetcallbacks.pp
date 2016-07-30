{$mode objfpc}{$H+}
unit enetcallbacks;

{
  ENet - Reliable UDP networking library

  FreePascal DLL header: enetcallbacks.pp
  Copyright (c) 2015 Dmitry D. Chernov aka Black Doomer

  Original file: callbacks.h
  Copyright (c) 2002-2014 Lee Salzman

  Version 1 for 1.3.12: 25.02.2015
  Version 2 for 1.3.13: 31.07.2016

  Permission is hereby granted, free of charge, to any person obtaining a copy
  of this software and associated documentation files (the "Software"), to deal
  in the Software without restriction, including without limitation the rights
  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
  copies of the Software, and to permit persons to whom the Software is
  furnished to do so, subject to the following conditions:

  The above copyright notice and this permission notice shall be included in all
  copies or substantial portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
  SOFTWARE.
}

interface

uses enettypes; //only for size_t

type

{$PACKRECORDS C}

  pENetCallbacks = ^TENetCallbacks;
  TENetCallbacks = record
    malloc    : function( size: enet_size_t ): Pointer; cdecl;
    free      : procedure( memory: Pointer ); cdecl;
    no_memory : procedure(); cdecl;
  end;

{$PACKRECORDS DEFAULT}

implementation

end.

