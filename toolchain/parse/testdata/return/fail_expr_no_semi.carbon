// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// AUTOUPDATE

fn F() {
  return x
// CHECK:STDERR: fail_expr_no_semi.carbon:[[@LINE+3]]:1: ERROR: `return` statements must end with a `;`.
// CHECK:STDERR: }
// CHECK:STDERR: ^
}

// CHECK:STDOUT: - filename: fail_expr_no_semi.carbon
// CHECK:STDOUT:   parse_tree: [
// CHECK:STDOUT:         {kind: 'FunctionIntroducer', text: 'fn'},
// CHECK:STDOUT:         {kind: 'Name', text: 'F'},
// CHECK:STDOUT:           {kind: 'ParameterListStart', text: '('},
// CHECK:STDOUT:         {kind: 'ParameterList', text: ')', subtree_size: 2},
// CHECK:STDOUT:       {kind: 'FunctionDefinitionStart', text: '{', subtree_size: 5},
// CHECK:STDOUT:         {kind: 'ReturnStatementStart', text: 'return'},
// CHECK:STDOUT:         {kind: 'NameExpression', text: 'x'},
// CHECK:STDOUT:       {kind: 'ReturnStatement', text: 'return', has_error: yes, subtree_size: 3},
// CHECK:STDOUT:     {kind: 'FunctionDefinition', text: '}', subtree_size: 9},
// CHECK:STDOUT:     {kind: 'FileEnd', text: ''},
// CHECK:STDOUT:   ]
