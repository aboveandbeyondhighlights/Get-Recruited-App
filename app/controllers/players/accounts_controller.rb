module Players
  class AccountsController < ApplicationController
    before_action :authenticate_player!

    def edit

    end

    def update_info
      if current_player.update(player_info_params)
        flash[:success] = 'Sucessfully saved info.'
      else
        flash[:danger] = current_player.display_error_messages
      end
      redirect_to players_account_path
    end

    def change_password
      player = current_player
      if player.valid_password?(player_password_params[:current_password])
        if player.change_password(player_password_params)
          sign_in(player, bypass: true)
          flash[:success] = 'Successfully changed password'
        else
          flash[:danger] = player.display_error_messages
        end
      else
        flash[:danger] = 'Current password was incorrect.'
      end
      redirect_to players_account_path
    end

    private

    def player_info_params
      params.require(:player).permit(:first_name, :last_name, :age, :height, :weight, :birthday, :foot, :nationality, :highschool_goals, :highschool_assists, :highschool_position, :club_goals, :club_name, :club_position, :club_assists, :state, :city, :street_address, :phone_number, :highlight_video_link, :full_game_link, :act_score, :sat_score, :highschool, :graduation_year)
    end

    def player_password_params
      params.require(:player).permit(:current_password, :new_password, :new_password_confirmtion)
    end
  end
end

