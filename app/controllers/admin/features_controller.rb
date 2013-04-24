class Admin::FeaturesController < AdminController
  def index
    @features = Feature.all
  end

  def show
    @feature = Feature.find(params[:id])

    respond_to do |format|
      format.html 
    end
  end

  def new
    @feature = Feature.new

    respond_to do |format|
      format.html
    end
  end

  def edit
    @feature = Feature.find(params[:id])
  end

  def create
    @feature = Feature.new(params[:feature])

    respond_to do |format|
      if @feature.save
        format.html { redirect_to admin_features_path, notice: 'Feature was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @feature = Feature.find(params[:id])

    respond_to do |format|
      if @feature.update_attributes(params[:feature])
        format.html { redirect_to admin_features_path, notice: 'Feature was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @feature = Feature.find(params[:id])
    @feature.destroy

    respond_to do |format|
      format.html { redirect_to admin_features_url }
    end
  end
end
