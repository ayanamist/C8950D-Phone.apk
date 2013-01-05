.class public Lcom/android/phone/SetSubscription;
.super Landroid/preference/PreferenceActivity;
.source "SetSubscription.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final PREF_PARENT_KEY:Ljava/lang/String; = "subscr_parent"

.field public static final SUBSCRIPTION_INDEX_INVALID:I = 0x1869f

.field private static final TAG:Ljava/lang/String; = "SetSubscription"


# instance fields
.field private final DIALOG_SET_SUBSCRIPTION_IN_PROGRESS:I

.field private final EVENT_SET_SUBSCRIPTION_DONE:I

.field private final EVENT_SIM_STATE_CHANGED:I

.field private final MAX_SUBSCRIPTIONS:I

.field private mCancelButton:Landroid/widget/TextView;

.field private mCardSubscrInfo:[Lcom/android/internal/telephony/SubscriptionData;

.field private mCardSubscriptionManager:Lcom/android/internal/telephony/CardSubscriptionManager;

.field mCheckBoxListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

.field private mHandler:Landroid/os/Handler;

.field private mOkButton:Landroid/widget/TextView;

.field private mSubscriptionManager:Lcom/android/internal/telephony/SubscriptionManager;

.field private mUserSelSub:Lcom/android/internal/telephony/SubscriptionData;

.field subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

.field private subErr:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x2

    .line 52
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/SetSubscription;->subErr:Z

    .line 70
    iput v1, p0, Lcom/android/phone/SetSubscription;->MAX_SUBSCRIPTIONS:I

    .line 72
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/SetSubscription;->EVENT_SET_SUBSCRIPTION_DONE:I

    .line 74
    iput v1, p0, Lcom/android/phone/SetSubscription;->EVENT_SIM_STATE_CHANGED:I

    .line 76
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/phone/SetSubscription;->DIALOG_SET_SUBSCRIPTION_IN_PROGRESS:I

    .line 270
    new-instance v0, Lcom/android/phone/SetSubscription$3;

    invoke-direct {v0, p0}, Lcom/android/phone/SetSubscription$3;-><init>(Lcom/android/phone/SetSubscription;)V

    iput-object v0, p0, Lcom/android/phone/SetSubscription;->mCheckBoxListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 468
    new-instance v0, Lcom/android/phone/SetSubscription$6;

    invoke-direct {v0, p0}, Lcom/android/phone/SetSubscription$6;-><init>(Lcom/android/phone/SetSubscription;)V

    iput-object v0, p0, Lcom/android/phone/SetSubscription;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/SetSubscription;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/phone/SetSubscription;->updateCheckBoxes()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/SetSubscription;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/phone/SetSubscription;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/SetSubscription;)Lcom/android/internal/telephony/SubscriptionManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/phone/SetSubscription;->mSubscriptionManager:Lcom/android/internal/telephony/SubscriptionManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/SetSubscription;)[Lcom/android/internal/telephony/SubscriptionData;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/phone/SetSubscription;->mCardSubscrInfo:[Lcom/android/internal/telephony/SubscriptionData;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/SetSubscription;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/phone/SetSubscription;->populateList()V

    return-void
.end method

.method private errorMutipleDeactivate()V
    .registers 4

    .prologue
    .line 447
    const-string v0, "SetSubscription"

    const-string v1, "errorMutipleDeactivate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c02df

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c02e0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/android/phone/SetSubscription$5;

    invoke-direct {v2, p0}, Lcom/android/phone/SetSubscription$5;-><init>(Lcom/android/phone/SetSubscription;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/android/phone/SetSubscription$4;

    invoke-direct {v1, p0}, Lcom/android/phone/SetSubscription$4;-><init>(Lcom/android/phone/SetSubscription;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 466
    return-void
.end method

.method private isFailed(Ljava/lang/String;)Z
    .registers 5
    .parameter "status"

    .prologue
    .line 532
    const-string v0, "SetSubscription"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFailed("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    if-eqz p1, :cond_42

    if-eqz p1, :cond_44

    const-string v0, "DEACTIVATE FAILED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "DEACTIVATE NOT SUPPORTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "ACTIVATE FAILED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "ACTIVATE NOT SUPPORTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 539
    :cond_42
    const/4 v0, 0x1

    .line 541
    :goto_43
    return v0

    :cond_44
    const/4 v0, 0x0

    goto :goto_43
.end method

.method private mapSub(I)Lcom/android/phone/SubscriptionID;
    .registers 4
    .parameter "sub"

    .prologue
    .line 222
    sget-object v0, Lcom/android/phone/SubscriptionID;->NONE:Lcom/android/phone/SubscriptionID;

    .line 223
    .local v0, ret:Lcom/android/phone/SubscriptionID;
    if-nez p1, :cond_6

    sget-object v0, Lcom/android/phone/SubscriptionID;->SUB_0:Lcom/android/phone/SubscriptionID;

    .line 224
    :cond_6
    const/4 v1, 0x1

    if-ne p1, v1, :cond_b

    sget-object v0, Lcom/android/phone/SubscriptionID;->SUB_1:Lcom/android/phone/SubscriptionID;

    .line 225
    :cond_b
    return-object v0
.end method

.method private notifyNewCardAvailable()V
    .registers 4

    .prologue
    .line 150
    const-string v0, "SetSubscription"

    const-string v1, "notifyNewCardAvailable()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c02de

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c02df

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/android/phone/SetSubscription$2;

    invoke-direct {v2, p0}, Lcom/android/phone/SetSubscription$2;-><init>(Lcom/android/phone/SetSubscription;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/android/phone/SetSubscription$1;

    invoke-direct {v1, p0}, Lcom/android/phone/SetSubscription$1;-><init>(Lcom/android/phone/SetSubscription;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 168
    return-void
.end method

.method private populateList()V
    .registers 22

    .prologue
    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/SetSubscription;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    const-string v19, "subscr_parent"

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/PreferenceScreen;

    .line 232
    .local v13, prefParent:Landroid/preference/PreferenceScreen;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/SetSubscription;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    .line 233
    .local v5, display:Landroid/view/Display;
    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v17

    .line 234
    .local v17, width:I
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v16, v0

    fill-array-data v16, :array_122

    .line 236
    .local v16, subGroupTitle:[I
    const-string v18, "SetSubscription"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "populateList:  mCardSubscrInfo.length = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/SetSubscription;->mCardSubscrInfo:[Lcom/android/internal/telephony/SubscriptionData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v9, 0x0

    .line 240
    .local v9, k:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/SetSubscription;->mCardSubscrInfo:[Lcom/android/internal/telephony/SubscriptionData;

    .local v2, arr$:[Lcom/android/internal/telephony/SubscriptionData;
    array-length v10, v2

    .local v10, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    move v8, v7

    .end local v2           #arr$:[Lcom/android/internal/telephony/SubscriptionData;
    .end local v7           #i$:I
    .end local v10           #len$:I
    .local v8, i$:I
    :goto_4e
    if-ge v8, v10, :cond_120

    aget-object v4, v2, v8

    .line 241
    .local v4, cardSub:Lcom/android/internal/telephony/SubscriptionData;
    if-eqz v4, :cond_119

    invoke-virtual {v4}, Lcom/android/internal/telephony/SubscriptionData;->getLength()I

    move-result v18

    if-lez v18, :cond_119

    .line 242
    const/4 v6, 0x0

    .line 245
    .local v6, i:I
    new-instance v15, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 246
    .local v15, subGroup:Landroid/preference/PreferenceCategory;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "sub_group_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 247
    aget v18, v16, v9

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 248
    invoke-virtual {v13, v15}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 251
    iget-object v3, v4, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    .local v3, arr$:[Lcom/android/internal/telephony/Subscription;
    array-length v11, v3

    .local v11, len$:I
    const/4 v7, 0x0

    .end local v8           #i$:I
    .restart local v7       #i$:I
    :goto_8a
    if-ge v7, v11, :cond_119

    aget-object v14, v3, v7

    .line 252
    .local v14, sub:Lcom/android/internal/telephony/Subscription;
    if-eqz v14, :cond_113

    iget-object v0, v14, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_113

    .line 253
    const-string v18, "SetSubscription"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "populateList:  mCardSubscrInfo["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "].subscription["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "] = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-instance v12, Lcom/android/phone/SubscriptionCheckBoxPreference;

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v12, v0, v1}, Lcom/android/phone/SubscriptionCheckBoxPreference;-><init>(Landroid/content/Context;I)V

    .line 257
    .local v12, newCheckBox:Lcom/android/phone/SubscriptionCheckBoxPreference;
    iget-object v0, v14, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/phone/SubscriptionCheckBoxPreference;->setTitleText(Ljava/lang/String;)V

    .line 259
    new-instance v18, Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "slot"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " index"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/phone/SubscriptionCheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/SetSubscription;->mCheckBoxListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/phone/SubscriptionCheckBoxPreference;->setOnSubPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 261
    invoke-virtual {v15, v12}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 263
    .end local v12           #newCheckBox:Lcom/android/phone/SubscriptionCheckBoxPreference;
    :cond_113
    add-int/lit8 v6, v6, 0x1

    .line 251
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_8a

    .line 266
    .end local v3           #arr$:[Lcom/android/internal/telephony/Subscription;
    .end local v6           #i:I
    .end local v7           #i$:I
    .end local v11           #len$:I
    .end local v14           #sub:Lcom/android/internal/telephony/Subscription;
    .end local v15           #subGroup:Landroid/preference/PreferenceCategory;
    :cond_119
    add-int/lit8 v9, v9, 0x1

    .line 240
    add-int/lit8 v7, v8, 0x1

    .restart local v7       #i$:I
    move v8, v7

    .end local v7           #i$:I
    .restart local v8       #i$:I
    goto/16 :goto_4e

    .line 268
    .end local v4           #cardSub:Lcom/android/internal/telephony/SubscriptionData;
    :cond_120
    return-void

    .line 234
    nop

    :array_122
    .array-data 0x4
        0xc8t 0x2t 0xct 0x7ft
        0xc9t 0x2t 0xct 0x7ft
    .end array-data
.end method

.method private setSubscription()V
    .registers 18

    .prologue
    .line 333
    const-string v13, "SetSubscription"

    const-string v14, "setSubscription"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/4 v4, 0x0

    .line 336
    .local v4, numSubSelected:I
    const/4 v1, 0x0

    .line 337
    .local v1, deactRequiredCount:I
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/phone/SetSubscription;->subErr:Z

    .line 339
    const/4 v2, 0x0

    .local v2, i:I
    :goto_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    array-length v13, v13

    if-ge v2, v13, :cond_23

    .line 340
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aget-object v13, v13, v2

    if-eqz v13, :cond_20

    .line 341
    add-int/lit8 v4, v4, 0x1

    .line 339
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 345
    :cond_23
    const-string v13, "SetSubscription"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "setSubscription: numSubSelected = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    if-nez v4, :cond_4d

    .line 349
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/SetSubscription;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f0c02cf

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v12

    .line 352
    .local v12, toast:Landroid/widget/Toast;
    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 440
    .end local v12           #toast:Landroid/widget/Toast;
    :cond_4c
    :goto_4c
    return-void

    .line 354
    :cond_4d
    const/4 v2, 0x0

    :goto_4e
    const/4 v13, 0x2

    if-ge v2, v13, :cond_206

    .line 355
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aget-object v13, v13, v2

    if-nez v13, :cond_c7

    .line 356
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v13, v13, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v13, v13, v2

    iget-object v13, v13, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v14, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v13, v14, :cond_c4

    .line 358
    const-string v13, "SetSubscription"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "setSubscription: Sub "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " not selected. Setting 99999"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v13, v13, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v13, v13, v2

    const v14, 0x1869f

    iput v14, v13, Lcom/android/internal/telephony/Subscription;->slotId:I

    .line 360
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v13, v13, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v13, v13, v2

    const v14, 0x1869f

    iput v14, v13, Lcom/android/internal/telephony/Subscription;->m3gppIndex:I

    .line 361
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v13, v13, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v13, v13, v2

    const v14, 0x1869f

    iput v14, v13, Lcom/android/internal/telephony/Subscription;->m3gpp2Index:I

    .line 362
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v13, v13, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v13, v13, v2

    iput v2, v13, Lcom/android/internal/telephony/Subscription;->subId:I

    .line 363
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v13, v13, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v13, v13, v2

    sget-object v14, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    iput-object v14, v13, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 366
    add-int/lit8 v1, v1, 0x1

    .line 354
    :cond_c4
    :goto_c4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    .line 371
    :cond_c7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aget-object v13, v13, v2

    invoke-virtual {v13}, Lcom/android/phone/SubscriptionCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 372
    .local v3, key:Ljava/lang/String;
    const-string v13, "SetSubscription"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "setSubscription: key = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const-string v13, " "

    invoke-virtual {v3, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 374
    .local v9, splitKey:[Ljava/lang/String;
    const/4 v13, 0x0

    aget-object v13, v9, v13

    const/4 v14, 0x0

    aget-object v14, v9, v14

    const-string v15, "slot"

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v14, v14, 0x4

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 375
    .local v7, sSlotId:Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 376
    .local v8, slotId:I
    const/4 v13, 0x1

    aget-object v13, v9, v13

    const/4 v14, 0x1

    aget-object v14, v9, v14

    const-string v15, "index"

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v14, v14, 0x5

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 377
    .local v6, sIndexId:Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 379
    .local v10, subIndex:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mCardSubscrInfo:[Lcom/android/internal/telephony/SubscriptionData;

    aget-object v13, v13, v8

    if-nez v13, :cond_179

    .line 380
    const-string v13, "SetSubscription"

    const-string v14, "setSubscription: mCardSubscrInfo is not in sync with SubscriptionManager"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v13, v13, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v13, v13, v2

    const v14, 0x1869f

    iput v14, v13, Lcom/android/internal/telephony/Subscription;->slotId:I

    .line 382
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v13, v13, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v13, v13, v2

    const v14, 0x1869f

    iput v14, v13, Lcom/android/internal/telephony/Subscription;->m3gppIndex:I

    .line 383
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v13, v13, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v13, v13, v2

    const v14, 0x1869f

    iput v14, v13, Lcom/android/internal/telephony/Subscription;->m3gpp2Index:I

    .line 384
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v13, v13, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v13, v13, v2

    iput v2, v13, Lcom/android/internal/telephony/Subscription;->subId:I

    .line 385
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v13, v13, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v13, v13, v2

    sget-object v14, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    iput-object v14, v13, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 388
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v13, v13, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v13, v13, v2

    iget-object v13, v13, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v14, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v13, v14, :cond_c4

    .line 390
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_c4

    .line 398
    :cond_179
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v13, v13, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v13, v13, v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/SetSubscription;->mCardSubscrInfo:[Lcom/android/internal/telephony/SubscriptionData;

    aget-object v14, v14, v8

    iget-object v14, v14, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v14, v14, v10

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/Subscription;->copyFrom(Lcom/android/internal/telephony/Subscription;)Lcom/android/internal/telephony/Subscription;

    .line 400
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v13, v13, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v13, v13, v2

    iput v2, v13, Lcom/android/internal/telephony/Subscription;->subId:I

    .line 401
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    if-eqz v13, :cond_1f8

    .line 404
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v13, v13, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v13, v13, v2

    iget-object v11, v13, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 406
    .local v11, subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v13, v13, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v13, v13, v2

    iput-object v11, v13, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 407
    sget-object v13, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v11, v13, :cond_1cc

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v13, v13, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v13, v13, v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v14, v14, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v14, v14, v2

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/Subscription;->equals(Lcom/android/internal/telephony/Subscription;)Z

    move-result v13

    if-nez v13, :cond_1d8

    .line 410
    :cond_1cc
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v13, v13, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v13, v13, v2

    sget-object v14, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    iput-object v14, v13, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 414
    :cond_1d8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v13, v13, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v13, v13, v2

    iget-object v13, v13, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v14, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v13, v14, :cond_c4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v13, v13, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v13, v13, v2

    iget-object v13, v13, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v14, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v13, v14, :cond_c4

    .line 418
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_c4

    .line 421
    .end local v11           #subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;
    :cond_1f8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v13, v13, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v13, v13, v2

    sget-object v14, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    iput-object v14, v13, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    goto/16 :goto_c4

    .line 427
    .end local v3           #key:Ljava/lang/String;
    .end local v6           #sIndexId:Ljava/lang/String;
    .end local v7           #sSlotId:Ljava/lang/String;
    .end local v8           #slotId:I
    .end local v9           #splitKey:[Ljava/lang/String;
    .end local v10           #subIndex:I
    :cond_206
    const/4 v13, 0x2

    if-lt v1, v13, :cond_20e

    .line 428
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/SetSubscription;->errorMutipleDeactivate()V

    goto/16 :goto_4c

    .line 430
    :cond_20e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mSubscriptionManager:Lcom/android/internal/telephony/SubscriptionManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/SubscriptionData;

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/SubscriptionManager;->setSubscription(Lcom/android/internal/telephony/SubscriptionData;)Z

    move-result v5

    .line 431
    .local v5, ret:Z
    if-eqz v5, :cond_4c

    .line 432
    const/16 v13, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/phone/SetSubscription;->showDialog(I)V

    .line 433
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mSubscriptionManager:Lcom/android/internal/telephony/SubscriptionManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/SetSubscription;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/android/internal/telephony/SubscriptionManager;->registerForSetSubscriptionCompleted(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_4c
.end method

.method private updateCheckBoxes()V
    .registers 13

    .prologue
    const/4 v11, 0x2

    .line 171
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, "subscr_parent"

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    .line 173
    .local v5, prefParent:Landroid/preference/PreferenceScreen;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_e
    iget-object v8, p0, Lcom/android/phone/SetSubscription;->mCardSubscrInfo:[Lcom/android/internal/telephony/SubscriptionData;

    array-length v8, v8

    if-ge v2, v8, :cond_5c

    .line 174
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sub_group_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    .line 176
    .local v7, subGroup:Landroid/preference/PreferenceCategory;
    if-eqz v7, :cond_59

    .line 177
    invoke-virtual {v7}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    .line 178
    .local v1, count:I
    const-string v8, "SetSubscription"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateCheckBoxes count = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v3, 0x0

    .local v3, j:I
    :goto_4b
    if-ge v3, v1, :cond_59

    .line 180
    invoke-virtual {v7, v3}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/SubscriptionCheckBoxPreference;

    .line 182
    .local v0, checkBoxPref:Lcom/android/phone/SubscriptionCheckBoxPreference;
    invoke-virtual {v0}, Lcom/android/phone/SubscriptionCheckBoxPreference;->markAllUnChecked()V

    .line 179
    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    .line 173
    .end local v0           #checkBoxPref:Lcom/android/phone/SubscriptionCheckBoxPreference;
    .end local v1           #count:I
    .end local v3           #j:I
    :cond_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 188
    .end local v7           #subGroup:Landroid/preference/PreferenceCategory;
    :cond_5c
    new-instance v8, Lcom/android/internal/telephony/SubscriptionData;

    invoke-direct {v8, v11}, Lcom/android/internal/telephony/SubscriptionData;-><init>(I)V

    iput-object v8, p0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    .line 189
    const/4 v2, 0x0

    :goto_64
    if-ge v2, v11, :cond_78

    .line 190
    iget-object v8, p0, Lcom/android/phone/SetSubscription;->mSubscriptionManager:Lcom/android/internal/telephony/SubscriptionManager;

    invoke-virtual {v8, v2}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscription(I)Lcom/android/internal/telephony/Subscription;

    move-result-object v6

    .line 191
    .local v6, sub:Lcom/android/internal/telephony/Subscription;
    iget-object v8, p0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v8, v8, v2

    invoke-virtual {v8, v6}, Lcom/android/internal/telephony/Subscription;->copyFrom(Lcom/android/internal/telephony/Subscription;)Lcom/android/internal/telephony/Subscription;

    .line 189
    add-int/lit8 v2, v2, 0x1

    goto :goto_64

    .line 195
    .end local v6           #sub:Lcom/android/internal/telephony/Subscription;
    :cond_78
    iget-object v8, p0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    if-eqz v8, :cond_13e

    .line 196
    const/4 v2, 0x0

    :goto_7d
    if-ge v2, v11, :cond_137

    .line 197
    const-string v8, "SetSubscription"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateCheckBoxes: mCurrentSelSub.subscription["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v10, v10, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v10, v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v8, p0, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    const/4 v9, 0x0

    aput-object v9, v8, v2

    .line 200
    iget-object v8, p0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v8, v8, v2

    iget-object v8, v8, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v9, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v8, v9, :cond_133

    .line 202
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "slot"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v9, v9, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v9, v9, v2

    iget v9, v9, Lcom/android/internal/telephony/Subscription;->slotId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " index"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v9, v9, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v9, v9, v2

    invoke-virtual {v9}, Lcom/android/internal/telephony/Subscription;->getAppIndex()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 205
    .local v4, key:Ljava/lang/String;
    const-string v8, "SetSubscription"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateCheckBoxes: key = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sub_group_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v9, v9, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v9, v9, v2

    iget v9, v9, Lcom/android/internal/telephony/Subscription;->slotId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    .line 209
    .restart local v7       #subGroup:Landroid/preference/PreferenceCategory;
    if-eqz v7, :cond_133

    .line 210
    invoke-virtual {v7, v4}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/SubscriptionCheckBoxPreference;

    .line 212
    .restart local v0       #checkBoxPref:Lcom/android/phone/SubscriptionCheckBoxPreference;
    invoke-direct {p0, v2}, Lcom/android/phone/SetSubscription;->mapSub(I)Lcom/android/phone/SubscriptionID;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/phone/SubscriptionCheckBoxPreference;->markChecked(Lcom/android/phone/SubscriptionID;)V

    .line 213
    iget-object v8, p0, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    aput-object v0, v8, v2

    .line 196
    .end local v0           #checkBoxPref:Lcom/android/phone/SubscriptionCheckBoxPreference;
    .end local v4           #key:Ljava/lang/String;
    .end local v7           #subGroup:Landroid/preference/PreferenceCategory;
    :cond_133
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7d

    .line 217
    :cond_137
    iget-object v8, p0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/SubscriptionData;

    iget-object v9, p0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/android/internal/telephony/SubscriptionData;

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/SubscriptionData;->copyFrom(Lcom/android/internal/telephony/SubscriptionData;)Lcom/android/internal/telephony/SubscriptionData;

    .line 219
    :cond_13e
    return-void
.end method


# virtual methods
.method displayAlertDialog([Ljava/lang/String;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 565
    const/4 v4, 0x2

    new-array v2, v4, [I

    fill-array-data v2, :array_a2

    .line 566
    .local v2, resSubId:[I
    const-string v0, ""

    .line 567
    .local v0, dispMsg:Ljava/lang/String;
    const v3, 0x7f0c02d4

    .line 569
    .local v3, title:I
    aget-object v4, p1, v6

    if-eqz v4, :cond_1b

    aget-object v4, p1, v6

    invoke-direct {p0, v4}, Lcom/android/phone/SetSubscription;->isFailed(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 570
    iput-boolean v5, p0, Lcom/android/phone/SetSubscription;->subErr:Z

    .line 572
    :cond_1b
    aget-object v4, p1, v5

    if-eqz v4, :cond_29

    aget-object v4, p1, v5

    invoke-direct {p0, v4}, Lcom/android/phone/SetSubscription;->isFailed(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 573
    iput-boolean v5, p0, Lcom/android/phone/SetSubscription;->subErr:Z

    .line 576
    :cond_29
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2a
    array-length v4, p1

    if-ge v1, v4, :cond_5f

    .line 577
    aget-object v4, p1, v1

    if-eqz v4, :cond_5c

    .line 578
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    aget v6, v2, v1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v1

    invoke-virtual {p0, v5}, Lcom/android/phone/SetSubscription;->setSubscriptionStatusToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 576
    :cond_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 583
    :cond_5f
    iget-boolean v4, p0, Lcom/android/phone/SetSubscription;->subErr:Z

    if-nez v4, :cond_66

    .line 584
    const v3, 0x7f0c02d3

    .line 587
    :cond_66
    const-string v4, "SetSubscription"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "displayAlertDialog:  dispMsg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1080027

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040013

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 594
    return-void

    .line 565
    nop

    :array_a2
    .array-data 0x4
        0xd5t 0x2t 0xct 0x7ft
        0xd6t 0x2t 0xct 0x7ft
    .end array-data
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 610
    iget-boolean v0, p0, Lcom/android/phone/SetSubscription;->subErr:Z

    if-nez v0, :cond_7

    .line 611
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->finish()V

    .line 613
    :cond_7
    invoke-direct {p0}, Lcom/android/phone/SetSubscription;->updateCheckBoxes()V

    .line 614
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/phone/SetSubscription;->mOkButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_8

    .line 326
    invoke-direct {p0}, Lcom/android/phone/SetSubscription;->setSubscription()V

    .line 330
    :cond_7
    :goto_7
    return-void

    .line 327
    :cond_8
    iget-object v0, p0, Lcom/android/phone/SetSubscription;->mCancelButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_7

    .line 328
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->finish()V

    goto :goto_7
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 15
    .parameter "icicle"

    .prologue
    const/16 v12, 0x4b

    const/4 v11, -0x2

    const/4 v10, 0x2

    .line 79
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "NOTIFY_NEW_CARD_AVAILABLE"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 80
    .local v2, newCardNotify:Z
    if-nez v2, :cond_17

    .line 81
    const v7, 0x1030005

    invoke-virtual {p0, v7}, Lcom/android/phone/SetSubscription;->setTheme(I)V

    .line 83
    :cond_17
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/SubscriptionManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/SetSubscription;->mSubscriptionManager:Lcom/android/internal/telephony/SubscriptionManager;

    .line 86
    invoke-static {}, Lcom/android/internal/telephony/CardSubscriptionManager;->getInstance()Lcom/android/internal/telephony/CardSubscriptionManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/SetSubscription;->mCardSubscriptionManager:Lcom/android/internal/telephony/CardSubscriptionManager;

    .line 88
    if-eqz v2, :cond_33

    .line 89
    const-string v7, "SetSubscription"

    const-string v8, "onCreate: Notify new cards are available!!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->finish()V

    .line 142
    :cond_32
    :goto_32
    return-void

    .line 96
    :cond_33
    new-array v7, v10, [Lcom/android/internal/telephony/SubscriptionData;

    iput-object v7, p0, Lcom/android/phone/SetSubscription;->mCardSubscrInfo:[Lcom/android/internal/telephony/SubscriptionData;

    .line 97
    const/4 v1, 0x0

    .local v1, i:I
    :goto_38
    if-ge v1, v10, :cond_47

    .line 98
    iget-object v7, p0, Lcom/android/phone/SetSubscription;->mCardSubscrInfo:[Lcom/android/internal/telephony/SubscriptionData;

    iget-object v8, p0, Lcom/android/phone/SetSubscription;->mCardSubscriptionManager:Lcom/android/internal/telephony/CardSubscriptionManager;

    invoke-virtual {v8, v1}, Lcom/android/internal/telephony/CardSubscriptionManager;->getCardSubscriptions(I)Lcom/android/internal/telephony/SubscriptionData;

    move-result-object v8

    aput-object v8, v7, v1

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 101
    :cond_47
    const v7, 0x7f050020

    invoke-virtual {p0, v7}, Lcom/android/phone/SetSubscription;->addPreferencesFromResource(I)V

    .line 102
    const v7, 0x7f040021

    invoke-virtual {p0, v7}, Lcom/android/phone/SetSubscription;->setContentView(I)V

    .line 104
    const v7, 0x7f0700c2

    invoke-virtual {p0, v7}, Lcom/android/phone/SetSubscription;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/phone/SetSubscription;->mOkButton:Landroid/widget/TextView;

    .line 105
    iget-object v7, p0, Lcom/android/phone/SetSubscription;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const v7, 0x7f0700c3

    invoke-virtual {p0, v7}, Lcom/android/phone/SetSubscription;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/phone/SetSubscription;->mCancelButton:Landroid/widget/TextView;

    .line 107
    iget-object v7, p0, Lcom/android/phone/SetSubscription;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v7, 0x7f0700c0

    invoke-virtual {p0, v7}, Lcom/android/phone/SetSubscription;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 110
    .local v3, t1:Landroid/widget/TextView;
    const v7, 0x7f0700c1

    invoke-virtual {p0, v7}, Lcom/android/phone/SetSubscription;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 111
    .local v4, t2:Landroid/widget/TextView;
    const v7, 0x7f0700bf

    invoke-virtual {p0, v7}, Lcom/android/phone/SetSubscription;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 114
    .local v5, t3:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 115
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v6

    .line 116
    .local v6, width:I
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    add-int/lit16 v8, v6, -0x96

    invoke-direct {v7, v8, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    new-array v7, v10, [Lcom/android/phone/SubscriptionCheckBoxPreference;

    iput-object v7, p0, Lcom/android/phone/SetSubscription;->subArray:[Lcom/android/phone/SubscriptionCheckBoxPreference;

    .line 124
    iget-object v7, p0, Lcom/android/phone/SetSubscription;->mCardSubscrInfo:[Lcom/android/internal/telephony/SubscriptionData;

    if-eqz v7, :cond_e8

    .line 125
    invoke-direct {p0}, Lcom/android/phone/SetSubscription;->populateList()V

    .line 127
    new-instance v7, Lcom/android/internal/telephony/SubscriptionData;

    invoke-direct {v7, v10}, Lcom/android/internal/telephony/SubscriptionData;-><init>(I)V

    iput-object v7, p0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/android/internal/telephony/SubscriptionData;

    .line 129
    invoke-direct {p0}, Lcom/android/phone/SetSubscription;->updateCheckBoxes()V

    .line 135
    :goto_c9
    iget-object v7, p0, Lcom/android/phone/SetSubscription;->mSubscriptionManager:Lcom/android/internal/telephony/SubscriptionManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/SubscriptionManager;->isSetSubscriptionInProgress()Z

    move-result v7

    if-eqz v7, :cond_32

    .line 136
    const-string v7, "SetSubscription"

    const-string v8, "onCreate: SetSubscription is in progress when started this activity"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/16 v7, 0x64

    invoke-virtual {p0, v7}, Lcom/android/phone/SetSubscription;->showDialog(I)V

    .line 138
    iget-object v7, p0, Lcom/android/phone/SetSubscription;->mSubscriptionManager:Lcom/android/internal/telephony/SubscriptionManager;

    iget-object v8, p0, Lcom/android/phone/SetSubscription;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/internal/telephony/SubscriptionManager;->registerForSetSubscriptionCompleted(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_32

    .line 131
    :cond_e8
    const-string v7, "SetSubscription"

    const-string v8, "onCreate: Card info not available: mCardSubscrInfo == NULL"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c9
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 511
    const/16 v1, 0x64

    if-ne p1, v1, :cond_20

    .line 512
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 514
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 515
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 516
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 520
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :goto_1f
    return-object v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 145
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 146
    iget-object v0, p0, Lcom/android/phone/SetSubscription;->mSubscriptionManager:Lcom/android/internal/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/phone/SetSubscription;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionManager;->unRegisterForSetSubscriptionCompleted(Landroid/os/Handler;)V

    .line 147
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 600
    iget-boolean v0, p0, Lcom/android/phone/SetSubscription;->subErr:Z

    if-nez v0, :cond_7

    .line 601
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->finish()V

    .line 603
    :cond_7
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 5
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 525
    const/16 v0, 0x64

    if-ne p1, v0, :cond_c

    .line 528
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 530
    :cond_c
    return-void
.end method

.method setSubscriptionStatusToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "status"

    .prologue
    .line 545
    const/4 v0, 0x0

    .line 546
    .local v0, retStr:Ljava/lang/String;
    const-string v1, "ACTIVATE SUCCESS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 547
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 561
    :cond_14
    :goto_14
    return-object v0

    .line 548
    :cond_15
    const-string v1, "DEACTIVATE SUCCESS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 549
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 550
    :cond_29
    const-string v1, "DEACTIVATE FAILED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 551
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 552
    :cond_3d
    const-string v1, "DEACTIVATE NOT SUPPORTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 553
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 554
    :cond_51
    const-string v1, "ACTIVATE FAILED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 555
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 556
    :cond_65
    const-string v1, "ACTIVATE NOT SUPPORTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 557
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 558
    :cond_79
    const-string v1, "NO CHANGE IN SUBSCRIPTION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 559
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14
.end method
