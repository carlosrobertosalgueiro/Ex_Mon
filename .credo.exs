# Este arquivo contém a configuração do Credo e você provavelmente está lendo
# depois de criá-lo com `mix credo.gen.config`.
#
# Se você encontrar algo errado ou pouco claro neste arquivo, denuncie um
# problema no GitHub: https://github.com/rrrene/credo/issues
#
% {
    #
    # Você pode ter quantas configurações quiser no campo `configs:`.
    configurações: [
      % {
        #
        # Execute qualquer configuração usando `mix credo -C <name>`. Se nenhum nome de configuração for fornecido
        # "padrão" é usado.
        #
        nome: "padrão" ,
        #
        # Estes são os arquivos incluídos na análise:
        arquivos: % {
          #
          # Você pode fornecer globs explícitos ou simplesmente diretórios.
          # Neste último caso será usado `**/*.{ex,exs}`.
          #
          incluído: [
            "lib/" ,
            "src/" ,
            "teste/" ,
            "web/" ,
            "apps/*/lib/" ,
            "apps/*/src/" ,
            "apps/*/test/" ,
            "apps/*/web/"
          ] ,
          excluído: [ ~r " /_build/ " ,  ~r " /deps/ " ,  ~r " /node_modules/ " ]
        } ,
        #
        # Carregue e configure plugins aqui:
        #
        plug-ins: [ ] ,
        #
        # Se você criar suas próprias verificações, deverá especificar os arquivos de origem para
        #-los aqui, para que possam ser carregados pelo Credo antes de executar a análise.
        #
        requer: [ ] ,
        #
        # Se você deseja aplicar um guia de estilo e precisa de um linting mais tradicional
        # experiência, você pode alterar `strict` para `true` abaixo:
        #
        estrito: falso ,
        #
        # Para modificar o tempo limite para analisar arquivos, altere este valor:
        #
        parse_timeout: 5000 ,
        #
        # Se você quiser usar saída sem cor por padrão, você pode alterar `color`
        # para `false` abaixo:
        #
        cor: verdade ,
        #
        # Você pode personalizar os parâmetros de qualquer verificação adicionando um segundo elemento
        # para a tupla.
        #
        # Para desabilitar uma verificação coloque `false` como segundo elemento:
        #
        # {Credo.Check.Design.DuplicatedCode, false}
        #
        verifica: % {
          habilitado: [
            #
            ## Verificações de consistência
            #
            { Credo.Check.Consistency.ExceptionNames ,  [ ] } ,
            { Credo.Check.Consistency.LineEndings ,  [ ] } ,
            { Credo.Check.Consistency.ParameterPatternMatching ,  [ ] } ,
            { Credo.Check.Consistency.SpaceAroundOperators ,  [ ] } ,
            { Credo.Check.Consistency.SpaceInParentheses ,  [ ] } ,
            { Credo.Check.Consistency.TabsOrSpaces ,  [ ] } ,
  
            #
            ## Verificações de projeto
            #
            # Você pode personalizar a prioridade de qualquer verificação
            # Os valores de prioridade são: `baixo, normal, alto, alto`
            #
            { Credo.Check.Design.AliasUsage ,
             [ prioridade: :low ,  if_nested_deeper_than: 2 ,  if_called_more_often_than: 0 ] } ,
            # Você também pode personalizar o exit_status de cada verificação.
            # Se você não quiser que os comentários TODO causem a falha do `mix credo`, apenas
            # configura este valor para 0 (zero).
            #
            { Credo.Check.Design.TagTODO ,  [ exit_status: 2 ] } ,
            { Credo.Check.Design.TagFIXME ,  [ ] } ,
  
            #
            ## Verificações de legibilidade
            #
            { Credo.Check.Readability.AliasOrder ,  [ ] } ,
            { Credo.Check.Readability.FunctionNames ,  [ ] } ,
            { Credo.Check.Readability.LargeNumbers ,  [ ] } ,
            { Credo.Check.Readability.MaxLineLength ,  [ prioridade: :low ,  max_length: 120 ] } ,
            { Credo.Check.Readability.ModuleAttributeNames ,  [ ] } ,
            { Credo.Check.Readability.ModuleDoc , false } ,
            { Credo.Check.Readability.ModuleNames ,  [ ] } ,
            { Credo.Check.Readability.ParenthesesInCondition ,  [ ] } ,
            { Credo.Check.Readability.ParenthesesOnZeroArityDefs ,  [ ] } ,
            { Credo.Check.Readability.PipeIntoAnonymousFunctions ,  [ ] } ,
            { Credo.Check.Readability.PredicateFunctionNames ,  [ ] } ,
            { Credo.Check.Readability.PreferImplicitTry ,  [ ] } ,
            { Credo.Check.Readability.RedundantBlankLines ,  [ ] } ,
            { Credo.Check.Readability.Semicolons ,  [ ] } ,
            { Credo.Check.Readability.SpaceAfterCommas ,  [ ] } ,
            { Credo.Check.Readability.StringSigils ,  [ ] } ,
            { Credo.Check.Readability.TrailingBlankLine ,  [ ] } ,
            { Credo.Check.Readability.TrailingWhiteSpace ,  [ ] } ,
            { Credo.Check.Readability.UnnecessaryAliasExpansion ,  [ ] } ,
            { Credo.Check.Readability.VariableNames ,  [ ] } ,
            { Credo.Check.Readability.WithSingleClause ,  [ ] } ,
  
            #
            ## Oportunidades de refatoração
            #
            { Credo.Check.Refactor.Apply ,  [ ] } ,
            { Credo.Check.Refactor.CondStatements ,  [ ] } ,
            { Credo.Check.Refactor.CyclomaticComplexity ,  [ ] } ,
            { Credo.Check.Refactor.FunctionArity ,  [ ] } ,
            { Credo.Check.Refactor.LongQuoteBlocks ,  [ ] } ,
            { Credo.Check.Refactor.MatchInCondition ,  [ ] } ,
            { Credo.Check.Refactor.MapJoin ,  [ ] } ,
            { Credo.Check.Refactor.NegatedConditionsInUnless ,  [ ] } ,
            { Credo.Check.Refactor.NegatedConditionsWithElse ,  [ ] } ,
            { Credo.Check.Refactor.Nesting ,  [ ] } ,
            { Credo.Check.Refactor.UnlessWithElse ,  [ ] } ,
            { Credo.Check.Refactor.WithClauses ,  [ ] } ,
            { Credo.Check.Refactor.FilterFilter ,  [ ] } ,
            { Credo.Check.Refactor.RejectReject ,  [ ] } ,
            { Credo.Check.Refactor.RedundantWithClauseResult ,  [ ] } ,
  
            #
            ## Avisos
            #
            { Credo.Check.Warning.ApplicationConfigInModuleAttribute ,  [ ] } ,
            { Credo.Check.Warning.BoolOperationOnSameValues ​​,  [ ] } ,
            { Credo.Check.Warning.ExpensiveEmptyEnumCheck ,  [ ] } ,
            { Credo.Check.Warning.IExPry ,  [ ] } ,
            { Credo.Check.Warning.IoInspect ,  [ ] } ,
            { Credo.Check.Warning.OperationOnSameValues ​​,  [ ] } ,
            { Credo.Check.Warning.OperationWithConstantResult ,  [ ] } ,
            { Credo.Check.Warning.RaiseInsideRescue ,  [ ] } ,
            { Credo.Check.Warning.SpecWithStruct ,  [ ] } ,
            { Credo.Check.Warning.WrongTestFileExtension ,  [ ] } ,
            { Credo.Check.Warning.UnusedEnumOperation ,  [ ] } ,
            { Credo.Check.Warning.UnusedFileOperation ,  [ ] } ,
            { Credo.Check.Warning.UnusedKeywordOperation ,  [ ] } ,
            { Credo.Check.Warning.UnusedListOperation ,  [ ] } ,
            { Credo.Check.Warning.UnusedPathOperation ,  [ ] } ,
            { Credo.Check.Warning.UnusedRegexOperation ,  [ ] } ,
            { Credo.Check.Warning.UnusedStringOperation ,  [ ] } ,
            { Credo.Check.Warning.UnusedTupleOperation ,  [ ] } ,
            { Credo.Check.Warning.UnsafeExec ,  [ ] }
          ] ,
          desativado: [
            #
            # Verificações agendadas para a próxima atualização de verificação (opção por enquanto, apenas substitua `false` por `[]`)
  
            #
            # Verificações controversas e experimentais (opt-in, basta mover a verificação para `:enabled`
            # e certifique-se de usar `mix credo --strict` para ver verificações de baixa prioridade)
            #
            { Credo.Check.Consistency.MultiAliasImportRequireUse ,  [ ] } ,
            { Credo.Check.Consistency.UnusedVariableNames ,  [ ] } ,
            { Credo.Check.Design.DuplicatedCode ,  [ ] } ,
            { Credo.Check.Design.SkipTestWithoutComment ,  [ ] } ,
            { Credo.Check.Readability.AliasAs ,  [ ] } ,
            { Credo.Check.Readability.BlockPipe ,  [ ] } ,
            { Credo.Check.Readability.ImplTrue ,  [ ] } ,
            { Credo.Check.Readability.MultiAlias ​​,  [ ] } ,
            { Credo.Check.Readability.NestedFunctionCalls ,  [ ] } ,
            { Credo.Check.Readability.SeparateAliasRequire ,  [ ] } ,
            { Credo.Check.Readability.SingleFunctionToBlockPipe ,  [ ] } ,
            { Credo.Check.Readability.SinglePipe ,  [ ] } ,
            { Credo.Check.Readability.Specs ,  [ ] } ,
            { Credo.Check.Readability.StrictModuleLayout ,  [ ] } ,
            { Credo.Check.Readability.WithCustomTaggedTuple ,  [ ] } ,
            { Credo.Check.Refactor.ABCSize ,  [ ] } ,
            { Credo.Check.Refactor.AppendSingleItem ,  [ ] } ,
            { Credo.Check.Refactor.DoubleBooleanNegation ,  [ ] } ,
            { Credo.Check.Refactor.FilterReject ,  [ ] } ,
            { Credo.Check.Refactor.IoPuts ,  [ ] } ,
            { Credo.Check.Refactor.MapMap ,  [ ] } ,
            { Credo.Check.Refactor.ModuleDependencies ,  [ ] } ,
            { Credo.Check.Refactor.NegatedIsNil ,  [ ] } ,
            { Credo.Check.Refactor.PipeChainStart ,  [ ] } ,
            { Credo.Check.Refactor.RejectFilter ,  [ ] } ,
            { Credo.Check.Refactor.VariableRebinding ,  [ ] } ,
            { Credo.Check.Warning.LazyLogging ,  [ ] } ,
            { Credo.Check.Warning.LeakyEnvironment ,  [ ] } ,
            { Credo.Check.Warning.MapGetUnsafePass ,  [ ] } ,
            { Credo.Check.Warning.MixEnv ,  [ ] } ,
            { Credo.Check.Warning.UnsafeToAtom ,  [ ] }
  
            # {Credo.Check.Refactor.MapInto, []},
  
            #
            # Verificações personalizadas podem ser criadas usando `mix credo.gen.check`.
            #
          ]
        }
      }
    ]
  }