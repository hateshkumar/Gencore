class GenCoreModel {
  GenCoreModel({
    required this.data,
    required this.pagination,
    required this.message,
  });

  late final List<Data> data;
  late final Pagination pagination;
  late final String message;

  GenCoreModel.fromJson(Map<String, dynamic> json){
    data = List.from(json['data']).map((e) => Data.fromJson(e)).toList();
    pagination = Pagination.fromJson(json['pagination']);
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['data'] = data.map((e) => e.toJson()).toList();
    _data['pagination'] = pagination.toJson();
    _data['message'] = message;
    return _data;
  }
}

class Data {
  Data({
    required this.id,
    required this.userId,
    this.attachments,
    required this.businessName,
    required this.businessDetails,
    required this.dunsNumber,
    required this.yearsOfExperience,
    required this.businessType,
    required this.isFeatured,
    required this.isVerified,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
    required this.formattedCreatedAt,
    required this.userDetail,
    required this.initiatedJobs,
    required this.finishedJobs,
    required this.urgentJobsCompleted,
    required this.urgentJobsCreated,
    required this.totalRevenue,
    required this.avgRating,
    this.reviewedBy,
    required this.totalFeedbackCount,
    required this.servicesOffered,
    required this.allServicesOffered,
    required this.profileRequest,
  });

  late final int id;
  late final int userId;
  late final dynamic attachments;
  late final String businessName;
  late final String businessDetails;
  late final String dunsNumber;
  late final String yearsOfExperience;
  late final String businessType;
  late final int isFeatured;
  late final int isVerified;
  late final CreatedAt createdAt;
  late final UpdatedAt updatedAt;
  late final dynamic deletedAt;
  late final String formattedCreatedAt;
  late final UserDetail userDetail;
  late final int initiatedJobs;
  late final int finishedJobs;
  late final int urgentJobsCompleted;
  late final int urgentJobsCreated;
  late final String totalRevenue;
  late final int avgRating;
  late final dynamic reviewedBy;
  late final int totalFeedbackCount;
  late final ServicesOffered servicesOffered;
  late final List<AllServicesOffered> allServicesOffered;
  late final ProfileRequest profileRequest;

  Data.fromJson(Map<String, dynamic> json){
    id = json['id'];
    userId = json['user_id'];
    attachments = null;
    businessName = json['business_name'];
    businessDetails = json['business_details'];
    dunsNumber = json['duns_number'];
    yearsOfExperience = json['years_of_experience'];
    businessType = json['business_type'];
    isFeatured = json['is_featured'];
    isVerified = json['is_verified'];
    createdAt = CreatedAt.fromJson(json['created_at']);
    updatedAt = UpdatedAt.fromJson(json['updated_at']);
    deletedAt = null;
    formattedCreatedAt = json['formatted_created_at'];
    userDetail = UserDetail.fromJson(json['user_detail']);
    initiatedJobs = json['initiated_jobs'];
    finishedJobs = json['finished_jobs'];
    urgentJobsCompleted = json['urgent_jobs_completed'];
    urgentJobsCreated = json['urgent_jobs_created'];
    totalRevenue = json['total_revenue'];
    avgRating = json['avg_rating'];
    reviewedBy = null;
    totalFeedbackCount = json['total_feedback_count'];
    servicesOffered = ServicesOffered.fromJson(json['services_offered']);
    allServicesOffered = List.from(json['all_services_offered']).map((e) =>
        AllServicesOffered.fromJson(e)).toList();
    profileRequest = ProfileRequest.fromJson(json['profile_request']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['user_id'] = userId;
    _data['attachments'] = attachments;
    _data['business_name'] = businessName;
    _data['business_details'] = businessDetails;
    _data['duns_number'] = dunsNumber;
    _data['years_of_experience'] = yearsOfExperience;
    _data['business_type'] = businessType;
    _data['is_featured'] = isFeatured;
    _data['is_verified'] = isVerified;
    _data['created_at'] = createdAt.toJson();
    _data['updated_at'] = updatedAt.toJson();
    _data['deleted_at'] = deletedAt;
    _data['formatted_created_at'] = formattedCreatedAt;
    _data['user_detail'] = userDetail.toJson();
    _data['initiated_jobs'] = initiatedJobs;
    _data['finished_jobs'] = finishedJobs;
    _data['urgent_jobs_completed'] = urgentJobsCompleted;
    _data['urgent_jobs_created'] = urgentJobsCreated;
    _data['total_revenue'] = totalRevenue;
    _data['avg_rating'] = avgRating;
    _data['reviewedBy'] = reviewedBy;
    _data['total_feedback_count'] = totalFeedbackCount;
    _data['services_offered'] = servicesOffered.toJson();
    _data['all_services_offered'] =
        allServicesOffered.map((e) => e.toJson()).toList();
    _data['profile_request'] = profileRequest.toJson();
    return _data;
  }
}

class CreatedAt {
  CreatedAt({
    required this.date,
    required this.timezoneType,
    required this.timezone,
  });

  late final String date;
  late final int timezoneType;
  late final String timezone;

  CreatedAt.fromJson(Map<String, dynamic> json){
    date = json['date'];
    timezoneType = json['timezone_type'];
    timezone = json['timezone'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['date'] = date;
    _data['timezone_type'] = timezoneType;
    _data['timezone'] = timezone;
    return _data;
  }
}

class UpdatedAt {
  UpdatedAt({
    required this.date,
    required this.timezoneType,
    required this.timezone,
  });

  late final String date;
  late final int timezoneType;
  late final String timezone;

  UpdatedAt.fromJson(Map<String, dynamic> json){
    date = json['date'];
    timezoneType = json['timezone_type'];
    timezone = json['timezone'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['date'] = date;
    _data['timezone_type'] = timezoneType;
    _data['timezone'] = timezone;
    return _data;
  }
}




class UserDetail {
  UserDetail({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.address,
    required this.profileImage,
    this.apartment,
    required this.zipCode,
    required this.phoneNumber,
    required this.password,
    required this.roleId,
    required this.accessLevel,
    required this.countryId,
    required this.stateId,
    required this.cityId,
    required this.activationKey,
    required this.activatedAt,
    required this.rememberToken,
    this.socialAccountId,
    required this.status,
    this.socialAccountType,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
    this.stripeId,
    this.cardBrand,
    this.cardLastFour,
    this.trialEndsAt,
    required this.isProfileCompleted,
    required this.userProfileImage,
    required this.role,
    required this.country,
    required this.city,
    required this.state,
    required this.formattedCreatedAt,
  });
  late final int id;
  late final String firstName;
  late final String lastName;
  late final String email;
  late final String address;
  late final String profileImage;
  late final Null apartment;
  late final String zipCode;
  late final String phoneNumber;
  late final String password;
  late final int roleId;
  late final String accessLevel;
  late final int countryId;
  late final int stateId;
  late final int cityId;
  late final String activationKey;
  late final String activatedAt;
  late final String rememberToken;
  late final Null socialAccountId;
  late final String status;
  late final Null socialAccountType;
  late final CreatedAt createdAt;
  late final UpdatedAt updatedAt;
  late final Null deletedAt;
  late final Null stripeId;
  late final Null cardBrand;
  late final Null cardLastFour;
  late final Null trialEndsAt;
  late final int isProfileCompleted;
  late final String userProfileImage;
  late final Role role;
  late final String country;
  late final String city;
  late final String state;
  late final String formattedCreatedAt;

  UserDetail.fromJson(Map<String, dynamic> json){
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    address = json['address'];
    profileImage = json['profile_image'];
    apartment = null;
    zipCode = json['zip_code'];
    phoneNumber = json['phone_number'];
    password = json['password'];
    roleId = json['role_id'];
    accessLevel = json['access_level'];
    countryId = json['country_id'];
    stateId = json['state_id'];
    cityId = json['city_id'];
    activationKey = json['activation_key'];
    activatedAt = json['activated_at'];
    rememberToken = json['remember_token'];
    socialAccountId = null;
    status = json['status'];
    socialAccountType = null;
    createdAt = CreatedAt.fromJson(json['created_at']);
    updatedAt = UpdatedAt.fromJson(json['updated_at']);
    deletedAt = null;
    stripeId = null;
    cardBrand = null;
    cardLastFour = null;
    trialEndsAt = null;
    isProfileCompleted = json['is_profile_completed'];
    userProfileImage = json['profileImage'];
    role = Role.fromJson(json['role']);
    country = json['country'];
    city = json['city'];
    state = json['state'];
    formattedCreatedAt = json['formatted_created_at'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['first_name'] = firstName;
    _data['last_name'] = lastName;
    _data['email'] = email;
    _data['address'] = address;
    _data['profile_image'] = profileImage;
    _data['apartment'] = apartment;
    _data['zip_code'] = zipCode;
    _data['phone_number'] = phoneNumber;
    _data['password'] = password;
    _data['role_id'] = roleId;
    _data['access_level'] = accessLevel;
    _data['country_id'] = countryId;
    _data['state_id'] = stateId;
    _data['city_id'] = cityId;
    _data['activation_key'] = activationKey;
    _data['activated_at'] = activatedAt;
    _data['remember_token'] = rememberToken;
    _data['social_account_id'] = socialAccountId;
    _data['status'] = status;
    _data['social_account_type'] = socialAccountType;
    _data['created_at'] = createdAt.toJson();
    _data['updated_at'] = updatedAt.toJson();
    _data['deleted_at'] = deletedAt;
    _data['stripe_id'] = stripeId;
    _data['card_brand'] = cardBrand;
    _data['card_last_four'] = cardLastFour;
    _data['trial_ends_at'] = trialEndsAt;
    _data['is_profile_completed'] = isProfileCompleted;
    _data['profileImage'] = userProfileImage;
    _data['role'] = role.toJson();
    _data['country'] = country;
    _data['city'] = city;
    _data['state'] = state;
    _data['formatted_created_at'] = formattedCreatedAt;
    return _data;
  }
}



class Role {
  Role();

  Role.fromJson(Map json);

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    return _data;
  }
}

class ServicesOffered {
  ServicesOffered({
    required this.DrainRepair,
  });

  late final int DrainRepair;

  ServicesOffered.fromJson(Map<String, dynamic> json){
    DrainRepair = json['Drain Repair'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['Drain Repair'] = DrainRepair;
    return _data;
  }
}

class AllServicesOffered {
  AllServicesOffered({
    required this.id,
    required this.userId,
    this.reason,
    required this.approvedBy,
    required this.approvedAt,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
    required this.serviceProviderProfileRequestId,
    required this.serviceId,
    required this.title,
    required this.description,
    required this.isDisplayBanner,
    required this.isDisplayServiceNav,
    required this.isDisplayFooterNav,
    required this.isFeatured,
    required this.urlSuffix,
    required this.parentId,
    required this.images,
    required this.icon,
  });

  late final int id;
  late final int userId;
  late final dynamic reason;
  late final int approvedBy;
  late final String approvedAt;
  late final int status;
  late final String createdAt;
  late final String updatedAt;
  late final dynamic deletedAt;
  late final int serviceProviderProfileRequestId;
  late final int serviceId;
  late final String title;
  late final String description;
  late final int isDisplayBanner;
  late final int isDisplayServiceNav;
  late final int isDisplayFooterNav;
  late final int isFeatured;
  late final String urlSuffix;
  late final int parentId;
  late final String images;
  late final String icon;

  AllServicesOffered.fromJson(Map<String, dynamic> json){
    id = json['id'];
    userId = json['user_id'];
    reason = null;
    approvedBy = json['approved_by'];
    approvedAt = json['approved_at'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = null;
    serviceProviderProfileRequestId =
    json['service_provider_profile_request_id'];
    serviceId = json['service_id'];
    title = json['title'];
    description = json['description'];
    isDisplayBanner = json['is_display_banner'];
    isDisplayServiceNav = json['is_display_service_nav'];
    isDisplayFooterNav = json['is_display_footer_nav'];
    isFeatured = json['is_featured'];
    urlSuffix = json['url_suffix'];
    parentId = json['parent_id'];
    images = json['images'];
    icon = json['icon'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['user_id'] = userId;
    _data['reason'] = reason;
    _data['approved_by'] = approvedBy;
    _data['approved_at'] = approvedAt;
    _data['status'] = status;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['deleted_at'] = deletedAt;
    _data['service_provider_profile_request_id'] =
        serviceProviderProfileRequestId;
    _data['service_id'] = serviceId;
    _data['title'] = title;
    _data['description'] = description;
    _data['is_display_banner'] = isDisplayBanner;
    _data['is_display_service_nav'] = isDisplayServiceNav;
    _data['is_display_footer_nav'] = isDisplayFooterNav;
    _data['is_featured'] = isFeatured;
    _data['url_suffix'] = urlSuffix;
    _data['parent_id'] = parentId;
    _data['images'] = images;
    _data['icon'] = icon;
    return _data;
  }
}

class ProfileRequest {
  ProfileRequest({
    required this.id,
    required this.userId,
    this.reason,
    required this.approvedBy,
    required this.approvedAt,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
    required this.formattedApprovedAt,
    required this.formattedCreatedAt,
    required this.formattedUpdatedAt,
    required this.approvedByUser,
  });

  late final int id;
  late final int userId;
  late final dynamic reason;
  late final int approvedBy;
  late final String approvedAt;
  late final String status;
  late final CreatedAt createdAt;
  late final UpdatedAt updatedAt;
  late final dynamic deletedAt;
  late final String formattedApprovedAt;
  late final String formattedCreatedAt;
  late final String formattedUpdatedAt;
  late final ApprovedByUser approvedByUser;

  ProfileRequest.fromJson(Map<String, dynamic> json){
    id = json['id'];
    userId = json['user_id'];
    reason = null;
    approvedBy = json['approved_by'];
    approvedAt = json['approved_at'];
    status = json['status'];
    createdAt = CreatedAt.fromJson(json['created_at']);
    updatedAt = UpdatedAt.fromJson(json['updated_at']);
    deletedAt = null;
    formattedApprovedAt = json['formatted_approved_at'];
    formattedCreatedAt = json['formatted_created_at'];
    formattedUpdatedAt = json['formatted_updated_at'];
    approvedByUser = ApprovedByUser.fromJson(json['approved_by_user']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['user_id'] = userId;
    _data['reason'] = reason;
    _data['approved_by'] = approvedBy;
    _data['approved_at'] = approvedAt;
    _data['status'] = status;
    _data['created_at'] = createdAt.toJson();
    _data['updated_at'] = updatedAt.toJson();
    _data['deleted_at'] = deletedAt;
    _data['formatted_approved_at'] = formattedApprovedAt;
    _data['formatted_created_at'] = formattedCreatedAt;
    _data['formatted_updated_at'] = formattedUpdatedAt;
    _data['approved_by_user'] = approvedByUser.toJson();
    return _data;
  }
}

class ApprovedByUser {
  ApprovedByUser({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.address,
    required this.profileImage,
    this.apartment,
    required this.zipCode,
    required this.phoneNumber,
    required this.password,
    required this.roleId,
    required this.accessLevel,
    required this.countryId,
    required this.stateId,
    required this.cityId,
    required this.activationKey,
    required this.activatedAt,
    required this.rememberToken,
    this.socialAccountId,
    required this.status,
    this.socialAccountType,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
    this.stripeId,
    this.cardBrand,
    this.cardLastFour,
    this.trialEndsAt,
    required this.isProfileCompleted,
    required this.role,
    required this.country,
    required this.city,
    required this.state,
    required this.formattedCreatedAt,
  });

  late final int id;
  late final String firstName;
  late final String lastName;
  late final String email;
  late final String address;
  late final String profileImage;
  late final dynamic apartment;
  late final String zipCode;
  late final String phoneNumber;
  late final String password;
  late final int roleId;
  late final String accessLevel;
  late final int countryId;
  late final int stateId;
  late final int cityId;
  late final String activationKey;
  late final String activatedAt;
  late final String rememberToken;
  late final dynamic socialAccountId;
  late final String status;
  late final dynamic socialAccountType;
  late final CreatedAt createdAt;
  late final UpdatedAt updatedAt;
  late final dynamic deletedAt;
  late final dynamic stripeId;
  late final dynamic cardBrand;
  late final dynamic cardLastFour;
  late final dynamic trialEndsAt;
  late final int isProfileCompleted;
  late final Role role;
  late final String country;
  late final String city;
  late final String state;
  late final String formattedCreatedAt;

  ApprovedByUser.fromJson(Map<String, dynamic> json){
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    address = json['address'];
    profileImage = json['profile_image'];
    apartment = null;
    zipCode = json['zip_code'];
    phoneNumber = json['phone_number'];
    password = json['password'];
    roleId = json['role_id'];
    accessLevel = json['access_level'];
    countryId = json['country_id'];
    stateId = json['state_id'];
    cityId = json['city_id'];
    activationKey = json['activation_key'];
    activatedAt = json['activated_at'];
    rememberToken = json['remember_token'];
    socialAccountId = null;
    status = json['status'];
    socialAccountType = null;
    createdAt = CreatedAt.fromJson(json['created_at']);
    updatedAt = UpdatedAt.fromJson(json['updated_at']);
    deletedAt = null;
    stripeId = null;
    cardBrand = null;
    cardLastFour = null;
    trialEndsAt = null;
    isProfileCompleted = json['is_profile_completed'];
    role = Role.fromJson(json['role']);
    country = json['country'];
    city = json['city'];
    state = json['state'];
    formattedCreatedAt = json['formatted_created_at'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['first_name'] = firstName;
    _data['last_name'] = lastName;
    _data['email'] = email;
    _data['address'] = address;
    _data['profile_image'] = profileImage;
    _data['apartment'] = apartment;
    _data['zip_code'] = zipCode;
    _data['phone_number'] = phoneNumber;
    _data['password'] = password;
    _data['role_id'] = roleId;
    _data['access_level'] = accessLevel;
    _data['country_id'] = countryId;
    _data['state_id'] = stateId;
    _data['city_id'] = cityId;
    _data['activation_key'] = activationKey;
    _data['activated_at'] = activatedAt;
    _data['remember_token'] = rememberToken;
    _data['social_account_id'] = socialAccountId;
    _data['status'] = status;
    _data['social_account_type'] = socialAccountType;
    _data['created_at'] = createdAt.toJson();
    _data['updated_at'] = updatedAt.toJson();
    _data['deleted_at'] = deletedAt;
    _data['stripe_id'] = stripeId;
    _data['card_brand'] = cardBrand;
    _data['card_last_four'] = cardLastFour;
    _data['trial_ends_at'] = trialEndsAt;
    _data['is_profile_completed'] = isProfileCompleted;
    _data['profileImage'] = profileImage;
    _data['role'] = role.toJson();
    _data['country'] = country;
    _data['city'] = city;
    _data['state'] = state;
    _data['formatted_created_at'] = formattedCreatedAt;
    return _data;
  }
}


class Pagination {
  Pagination({
    required this.total,
    required this.current,
    required this.first,
    required this.last,
    required this.from,
    required this.to,
    required this.previous,
    required this.next,
    required this.pages,
  });

  late final int total;
  late final int current;
  late final int first;
  late final int last;
  late final int from;
  late final int to;
  late final int previous;
  late final int next;
  late final List<int> pages;

  Pagination.fromJson(Map<String, dynamic> json){
    total = json['total'];
    current = json['current'];
    first = json['first'];
    last = json['last'];
    from = json['from'];
    to = json['to'];
    previous = json['previous'];
    next = json['next'];
    pages = List.castFrom<dynamic, int>(json['pages']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['total'] = total;
    _data['current'] = current;
    _data['first'] = first;
    _data['last'] = last;
    _data['from'] = from;
    _data['to'] = to;
    _data['previous'] = previous;
    _data['next'] = next;
    _data['pages'] = pages;
    return _data;
  }
}