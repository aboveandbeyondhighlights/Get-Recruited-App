# frozen_string_literal: true

class DeviseCreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.string :first_name, null: false, default: ""
      t.string :last_name, null: false, default: ""
      t.string :highschool, null: false, default: ""
      t.integer :graduation_year, null: false, default: 2019
      t.integer :age, null: false, default: 17
      t.date :birthday, null: false
      t.string :foot, null: false, default: "right"
      t.string :nationality, null: false, default: ""
      t.string :sex, null: false, default: ""
      t.integer :highschool_goals
      t.integer :highschool_assists
      t.integer :highschool_position
      t.string :state, null: false, default: ""
      t.string :city, null: false, default: ""
      t.string :street_address, null: false, default: ""
      t.string :phone_number, null: false, default: ""
      t.string :club_name, null: false, default: ""
      t.integer :club_goals
      t.integer :club_assists
      t.integer :club_position
      t.string :height, null: false, default: ""
      t.integer :weight
      t.string :highlight_video_link
      t.string :full_game_link
      t.integer :sat_score
      t.integer :act_score

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.inet     :current_sign_in_ip
      t.inet     :last_sign_in_ip

      ## Confirmable
      t.string   :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps null: false
    end

    add_index :players, :email,                unique: true
    add_index :players, :reset_password_token, unique: true
    # add_index :players, :confirmation_token,   unique: true
    # add_index :players, :unlock_token,         unique: true
  end
end
