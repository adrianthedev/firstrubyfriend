class MentorshipResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # Fields generated from the model
  field :mentor_id, as: :number
  field :applicant_id, as: :number
  field :standing, as: :select, enum: ::Mentorship.standings
  field :applicant_month_1_email_sent_at, as: :date_time
  field :applicant_month_2_email_sent_at, as: :date_time
  field :applicant_month_3_email_sent_at, as: :date_time
  field :applicant_month_4_email_sent_at, as: :date_time
  field :applicant_month_5_email_sent_at, as: :date_time
  field :applicant_month_6_email_sent_at, as: :date_time
  field :mentor_month_1_email_sent_at, as: :date_time
  field :mentor_month_2_email_sent_at, as: :date_time
  field :mentor_month_3_email_sent_at, as: :date_time
  field :mentor_month_4_email_sent_at, as: :date_time
  field :mentor_month_5_email_sent_at, as: :date_time
  field :mentor_month_6_email_sent_at, as: :date_time
  field :mentor, as: :belongs_to
  field :applicant, as: :belongs_to
  # add fields here
end