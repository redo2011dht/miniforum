class Ability
  include CanCan::Ability

  def initialize(user)

     ##neu la admin 
    if user.admin?
        can :manage, :all
    else ## neu la thanh vien
        
        ##co quyen cap nhat cau hoi
        can :update,Question do |question|
            ##neu cau hoi thuoc ve nguoi nay
            question.user==user
        end

        ##Co quyen xoa cau hoi
         can :destroy,Question do |question|
            ##neu cau hoi thuoc ve nguoi nay
            question.user==user
        end




        ## co quyen cap nhat cau tra loi
         can :update,Answer do |answer|
            ##neu cau tra loi thuoc ve nguoi nay
            answer.user==user 
        end

          ## co quyen xoa cau tra loi
         can :destroy,Answer do |answer|
            answer.user==user ##neu cau tra loi thuoc ve nguoi nay
        end

        ## co quyen tao cau hoi va cau tra loi
        can :create, Question
        can :create, Answer

    end
  end
end
