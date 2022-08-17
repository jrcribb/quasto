PROMPT Running SQL file for installing the QUASTO objects on the database. Called from install_objects.sql.
@src/ddl/tab/qa_rules.sql
@src/ddl/ind/qa_rules.sql
@src/ddl/cons/qa_rules.sql
@src/ddl/seq/qaru_seq.sql
@src/plsql/typ/qa_rule_t.sql
@src/plsql/typ/qa_rules_t.sql
@src/plsql/pkg/qa_main_pkg.sql
@src/plsql/pkg/qa_api_pkg.sql
@src/plsql/trg/qaru_iu_trg.sql
@src/plsql/syn/qa_rule_t.sql
@src/plsql/fn/fc_export_qa_rules.sql

grant execute qa_api_pkg to public;
grant execute qa_rule_t to public;