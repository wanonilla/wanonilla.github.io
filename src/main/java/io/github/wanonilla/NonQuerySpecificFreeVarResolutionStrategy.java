package io.github.wanonilla;

import wien.secpriv.horst.data.Expression;
import wien.secpriv.horst.data.Proposition;
import wien.secpriv.horst.data.Rule;
import wien.secpriv.horst.execution.PreprocessingStrategy;
import wien.secpriv.horst.translation.visitors.AbstractExpressionVisitor;
import wien.secpriv.horst.translation.visitors.ClauseMappingRuleVisitor;
import wien.secpriv.horst.translation.visitors.ExpressionMappingPropositionVisitor;
import wien.secpriv.horst.translation.visitors.PropositionMappingClauseVisitor;

import java.util.List;
import java.util.Optional;
import java.util.Set;

public class NonQuerySpecificFreeVarResolutionStrategy extends PreprocessingStrategy {

    @Override
    public Optional<List<Rule>> preprocess(List<Rule> rules, Set<Proposition.PredicateProposition> queries) {
        ExpressionMappingPropositionVisitor propositionVisitor = new ExpressionMappingPropositionVisitor(new FreeVarExpressionVisitor());
        PropositionMappingClauseVisitor clauseVisitor = new PropositionMappingClauseVisitor(propositionVisitor);
        ClauseMappingRuleVisitor ruleVisitor = new ClauseMappingRuleVisitor(clauseVisitor);

        return Optional.of(rules.stream().map(r -> r.accept(ruleVisitor)).toList());
    }

    private static class FreeVarExpressionVisitor extends AbstractExpressionVisitor {
        private static int freeVarCount = -1;

        @Override
        public Expression visit(Expression.AppExpression expression) {
            switch (expression.operation.name) {
                case "freeBool", "freeInt", "freeBaseValue" -> {
                    return new Expression.FreeVarExpression(expression.getType(), "??fv?" + (++freeVarCount));
                }
                default -> {
                    return super.visit(expression);
                }
            }
        }
    }
}
