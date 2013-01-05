.class public Lcom/android/phone/TimeConsumingPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "TimeConsumingPreferenceActivity.java"

# interfaces
.implements Lcom/android/phone/TimeConsumingPreferenceListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field private static final BUSY_READING_DIALOG:I = 0x64

.field private static final BUSY_SAVING_DIALOG:I = 0xc8

.field static final EXCEPTION_ERROR:I = 0x12c

.field static final FDN_CHECK_FAILURE:I = 0x258

.field private static final LOG_TAG:Ljava/lang/String; = "TimeConsumingPreferenceActivity"

.field static final RADIO_OFF_ERROR:I = 0x1f4

.field static final RESPONSE_ERROR:I = 0x190

.field static final STK_CC_SS_TO_DIAL_ERROR:I = 0x2bc

.field static final STK_CC_SS_TO_SS_ERROR:I = 0x384

.field static final STK_CC_SS_TO_USSD_ERROR:I = 0x320


# instance fields
.field private final DBG:Z

.field private final mBusyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsForeground:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 28
    iput-boolean v1, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->DBG:Z

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mBusyList:Ljava/util/ArrayList;

    .line 43
    iput-boolean v1, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsForeground:Z

    return-void
.end method

.method private dismissDialogSafely(I)V
    .registers 3
    .parameter "id"

    .prologue
    .line 207
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->dismissDialog(I)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_4

    .line 213
    :goto_3
    return-void

    .line 208
    :catch_4
    move-exception v0

    goto :goto_3
.end method


# virtual methods
.method dumpState()V
    .registers 6

    .prologue
    .line 216
    const-string v2, "TimeConsumingPreferenceActivity"

    const-string v3, "dumpState begin"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v2, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mBusyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 218
    .local v1, key:Ljava/lang/String;
    const-string v2, "TimeConsumingPreferenceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBusyList: key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 220
    .end local v1           #key:Ljava/lang/String;
    :cond_32
    const-string v2, "TimeConsumingPreferenceActivity"

    const-string v3, "dumpState end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2
    .parameter "dialog"

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->finish()V

    .line 203
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 149
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 150
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "icicle"

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsForeground:Z

    .line 134
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 10
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    const v6, 0x7f0c00a3

    .line 47
    const/16 v5, 0x64

    if-eq p1, v5, :cond_d

    const/16 v5, 0xc8

    if-ne p1, v5, :cond_44

    .line 48
    :cond_d
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 49
    .local v1, dialog:Landroid/app/ProgressDialog;
    const v5, 0x7f0c0097

    invoke-virtual {p0, v5}, Lcom/android/phone/TimeConsumingPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 50
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 52
    sparse-switch p1, :sswitch_data_bc

    move-object v1, v4

    .line 127
    .end local v1           #dialog:Landroid/app/ProgressDialog;
    :goto_24
    return-object v1

    .line 55
    .restart local v1       #dialog:Landroid/app/ProgressDialog;
    :sswitch_25
    invoke-virtual {v1, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 57
    invoke-virtual {v1, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 58
    const v4, 0x7f0c0099

    invoke-virtual {p0, v4}, Lcom/android/phone/TimeConsumingPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_24

    .line 61
    :sswitch_36
    invoke-virtual {v1, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 62
    const v4, 0x7f0c009a

    invoke-virtual {p0, v4}, Lcom/android/phone/TimeConsumingPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_24

    .line 68
    .end local v1           #dialog:Landroid/app/ProgressDialog;
    :cond_44
    const/16 v5, 0x190

    if-eq p1, v5, :cond_60

    const/16 v5, 0x1f4

    if-eq p1, v5, :cond_60

    const/16 v5, 0x12c

    if-eq p1, v5, :cond_60

    const/16 v5, 0x258

    if-eq p1, v5, :cond_60

    const/16 v5, 0x2bc

    if-eq p1, v5, :cond_60

    const/16 v5, 0x320

    if-eq p1, v5, :cond_60

    const/16 v5, 0x384

    if-ne p1, v5, :cond_b9

    .line 71
    :cond_60
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 74
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0c0098

    .line 76
    .local v3, titleId:I
    sparse-switch p1, :sswitch_data_c6

    .line 110
    const v2, 0x7f0c009d

    .line 113
    .local v2, msgId:I
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 117
    :goto_71
    invoke-virtual {p0, v3}, Lcom/android/phone/TimeConsumingPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 118
    invoke-virtual {p0, v2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 119
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 120
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 123
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    goto :goto_24

    .line 78
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v2           #msgId:I
    :sswitch_8f
    const v2, 0x7f0c009c

    .line 81
    .restart local v2       #msgId:I
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_71

    .line 84
    .end local v2           #msgId:I
    :sswitch_96
    const v2, 0x7f0c00a2

    .line 86
    .restart local v2       #msgId:I
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_71

    .line 89
    .end local v2           #msgId:I
    :sswitch_9d
    const v2, 0x7f0c009e

    .line 91
    .restart local v2       #msgId:I
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_71

    .line 94
    .end local v2           #msgId:I
    :sswitch_a4
    const v2, 0x7f0c009f

    .line 96
    .restart local v2       #msgId:I
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_71

    .line 99
    .end local v2           #msgId:I
    :sswitch_ab
    const v2, 0x7f0c00a0

    .line 101
    .restart local v2       #msgId:I
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_71

    .line 104
    .end local v2           #msgId:I
    :sswitch_b2
    const v2, 0x7f0c00a1

    .line 106
    .restart local v2       #msgId:I
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_71

    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v2           #msgId:I
    .end local v3           #titleId:I
    :cond_b9
    move-object v1, v4

    .line 127
    goto/16 :goto_24

    .line 52
    :sswitch_data_bc
    .sparse-switch
        0x64 -> :sswitch_25
        0xc8 -> :sswitch_36
    .end sparse-switch

    .line 76
    :sswitch_data_c6
    .sparse-switch
        0x190 -> :sswitch_8f
        0x1f4 -> :sswitch_96
        0x258 -> :sswitch_9d
        0x2bc -> :sswitch_a4
        0x320 -> :sswitch_ab
        0x384 -> :sswitch_b2
    .end sparse-switch
.end method

.method public onError(Landroid/preference/Preference;I)V
    .registers 4
    .parameter "preference"
    .parameter "error"

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsForeground:Z

    if-eqz v0, :cond_7

    .line 188
    invoke-virtual {p0, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->showDialog(I)V

    .line 190
    :cond_7
    return-void
.end method

.method public onException(Landroid/preference/Preference;Lcom/android/internal/telephony/CommandException;)V
    .registers 5
    .parameter "preference"
    .parameter "exception"

    .prologue
    .line 193
    invoke-virtual {p2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_e

    .line 194
    const/16 v0, 0x258

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onError(Landroid/preference/Preference;I)V

    .line 199
    :goto_d
    return-void

    .line 196
    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 197
    const/16 v0, 0x12c

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onError(Landroid/preference/Preference;I)V

    goto :goto_d
.end method

.method public onFinished(Landroid/preference/Preference;Z)V
    .registers 5
    .parameter "preference"
    .parameter "reading"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mBusyList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 174
    iget-object v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mBusyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 175
    if-eqz p2, :cond_19

    .line 176
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->dismissDialogSafely(I)V

    .line 181
    :cond_18
    :goto_18
    return-void

    .line 178
    :cond_19
    const/16 v0, 0xc8

    invoke-direct {p0, v0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->dismissDialogSafely(I)V

    goto :goto_18
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 144
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsForeground:Z

    .line 146
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 138
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsForeground:Z

    .line 140
    return-void
.end method

.method public onStarted(Landroid/preference/Preference;Z)V
    .registers 5
    .parameter "preference"
    .parameter "reading"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mBusyList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    iget-boolean v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsForeground:Z

    if-eqz v0, :cond_14

    .line 159
    if-eqz p2, :cond_15

    .line 160
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->showDialog(I)V

    .line 166
    :cond_14
    :goto_14
    return-void

    .line 162
    :cond_15
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->showDialog(I)V

    goto :goto_14
.end method
