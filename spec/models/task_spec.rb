require 'rails_helper'

RSpec.describe Task do
  describe 'instance methods' do
    describe '#laundry?' do
      # could use #laundry? or ::laundry?
      it 'returns true if the title is laundry' do
        task = Task.create!(title: 'laundry', description: 'clean the clothes')

        expect(task.laundry?).to be(true)
      end

      it 'returns false is the title is not laundry' do
        task = Task.create!(title: 'groceries', description: 'buy food')

        expect(task.laundry?).to be(false)
      end

      it 'returns true when the description is laundry' do
        task = Task.create!(title: 'Clean my clothes', description: 'laundry')

        expect(task.laundry?).to be(true)
      end

      it 'returns false when neither the description nor title is laundry' do
        task = Task.create!(title: 'Wash car', description: 'interior')

        expect(task.laundry?).to be(false)
      end

      it 'returns true if the title contains the word laundry' do
        task = Task.create!(title: 'Wash car', description: 'interior')
        expect(task.laundry?).to be(false)

        task = Task.create!(title: 'do the laundry', description: 'do it')
        expect(task.laundry?).to be(true)
      end

       it 'is case insensitive when checking if the title contains the word laundry' do
         task = Task.create!(title: 'do the LAUNDRY', description: 'do it')

         expect(task.laundry?).to be(true)
       end

       it 'returns true when the description contains the word laundry' do
         task = Task.create!(title: 'downstairs', description: 'do half the laundry')

         expect(task.laundry?).to be(true)
       end

       it 'is case insensitive when checking if the description contains the word laundry' do
         task = Task.create!(title: 'downstairs', description: 'do half the LauNDRy')

         expect(task.laundry?).to be(true)
       end

    end
  end
end
