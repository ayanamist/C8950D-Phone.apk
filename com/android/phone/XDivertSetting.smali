.class public Lcom/android/phone/XDivertSetting;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "XDivertSetting.java"


# static fields
.field private static final BUTTON_XDIVERT:Ljava/lang/String; = "xdivert_checkbox"

.field private static final LOG_TAG:Ljava/lang/String; = "XDivertSetting"


# instance fields
.field private mXDivertButton:Lcom/android/phone/XDivertCheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "icicle"

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v4, 0x7f050025

    invoke-virtual {p0, v4}, Lcom/android/phone/XDivertSetting;->addPreferencesFromResource(I)V

    .line 55
    invoke-virtual {p0}, Lcom/android/phone/XDivertSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 56
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "Sub1_Line1Number"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, sub1Number:Ljava/lang/String;
    const-string v4, "Sub2_Line1Number"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, sub2Number:Ljava/lang/String;
    const-string v4, "XDivertSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate sub1Number = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "sub2Number = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p0}, Lcom/android/phone/XDivertSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 60
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    const-string v4, "xdivert_checkbox"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/XDivertCheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/XDivertSetting;->mXDivertButton:Lcom/android/phone/XDivertCheckBoxPreference;

    .line 61
    iget-object v4, p0, Lcom/android/phone/XDivertSetting;->mXDivertButton:Lcom/android/phone/XDivertCheckBoxPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, p0, v5, v2, v3}, Lcom/android/phone/XDivertCheckBoxPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZLjava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method
