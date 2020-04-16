class AddIncidentsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :incidents do |t|
      t.string :title
      t.boolean :is_resolved, default: true
      t.datetime :occurred_at
    end

    execute <<-HERE
    INSERT INTO "public"."incidents" ("id", "title", "is_resolved", "occurred_at") VALUES
    ('1', 'Elevated error rate for API', 't', '2020-04-16 22:48:44.048291'),
    ('2', 'Web client not responding', 't', '2020-04-16 22:48:57.7405'),
    ('3', 'Elevated error rate for webhook service', 'f', '2020-04-16 22:49:13.355821');
    HERE
  end
end
