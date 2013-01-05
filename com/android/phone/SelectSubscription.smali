.class public Lcom/android/phone/SelectSubscription;
.super Landroid/preference/PreferenceActivity;
.source "SelectSubscription.java"


# static fields
.field private static final DBG:Z = false

.field private static final KEY_SUBSCRIPTION_0:Ljava/lang/String; = "button_sub_id_00"

.field private static final KEY_SUBSCRIPTION_1:Ljava/lang/String; = "button_sub_id_01"

.field private static final LOG_TAG:Ljava/lang/String; = "SelectSubscription"

.field public static final PACKAGE:Ljava/lang/String; = "PACKAGE"

.field public static final TARGET_CLASS:Ljava/lang/String; = "TARGET_CLASS"


# instance fields
.field private subscriptionPref0:Landroid/preference/PreferenceScreen;

.field private subscriptionPref1:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 86
    const-string v0, "SelectSubscription"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "icicle"

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v5, 0x7f05001d

    invoke-virtual {p0, v5}, Lcom/android/phone/SelectSubscription;->addPreferencesFromResource(I)V

    .line 58
    invoke-virtual {p0}, Lcom/android/phone/SelectSubscription;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 60
    .local v3, prefSet:Landroid/preference/PreferenceScreen;
    const-string v5, "button_sub_id_00"

    invoke-virtual {p0, v5}, Lcom/android/phone/SelectSubscription;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/phone/SelectSubscription;->subscriptionPref0:Landroid/preference/PreferenceScreen;

    .line 61
    const-string v5, "button_sub_id_01"

    invoke-virtual {p0, v5}, Lcom/android/phone/SelectSubscription;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/phone/SelectSubscription;->subscriptionPref1:Landroid/preference/PreferenceScreen;

    .line 63
    invoke-virtual {p0}, Lcom/android/phone/SelectSubscription;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 64
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "PACKAGE"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, pkg:Ljava/lang/String;
    const-string v5, "TARGET_CLASS"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, targetClass:Ljava/lang/String;
    :try_start_31
    iget-object v5, p0, Lcom/android/phone/SelectSubscription;->subscriptionPref0:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    iget-object v5, p0, Lcom/android/phone/SelectSubscription;->subscriptionPref1:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_43} :catch_5c

    .line 76
    :goto_43
    iget-object v5, p0, Lcom/android/phone/SelectSubscription;->subscriptionPref0:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "subscription"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    iget-object v5, p0, Lcom/android/phone/SelectSubscription;->subscriptionPref1:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "subscription"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    return-void

    .line 71
    :catch_5c
    move-exception v0

    .line 72
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "SelectSubscription"

    const-string v6, "pkg is null."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 44
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 45
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 82
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 83
    return-void
.end method
