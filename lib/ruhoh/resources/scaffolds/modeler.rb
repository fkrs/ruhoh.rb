module Ruhoh::Resources::Scaffolds
  class Modeler < Ruhoh::Resources::BaseModeler
    def generate
      dict = {}
      File.open(@pointer['realpath'], 'r:UTF-8') { |f| dict[@pointer['id']] = f.read }
      dict
    end
  end
end