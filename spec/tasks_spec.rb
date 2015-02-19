require 'rake'
module NearestTimeZone
  describe 'rake tasks' do
    before :all do
      Rake.application.rake_require "tasks/nearest_time_zone_tasks"
    end

    describe 'nearest_time_zone:dump' do
      let(:the_task_name) { 'nearest_time_zone:dump' }

      let :run_rake_task do
        Rake::Task[the_task_name].reenable
        Rake.application.invoke_task(the_task_name)
      end

      it "should bake a bar" do
        expect(Dump).to receive(:dump).and_call_original
        run_rake_task
      end
    end
  end
end
