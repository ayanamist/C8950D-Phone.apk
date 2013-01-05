.class Lcom/android/phone/ipcallsetting/IPCallInputDialog$3;
.super Ljava/lang/Object;
.source "IPCallInputDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ipcallsetting/IPCallInputDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ipcallsetting/IPCallInputDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/ipcallsetting/IPCallInputDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog$3;->this$0:Lcom/android/phone/ipcallsetting/IPCallInputDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11
    .parameter "v"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 106
    iget-object v4, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog$3;->this$0:Lcom/android/phone/ipcallsetting/IPCallInputDialog;

    invoke-static {v4}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->access$300(Lcom/android/phone/ipcallsetting/IPCallInputDialog;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_45

    .line 108
    iget-object v4, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog$3;->this$0:Lcom/android/phone/ipcallsetting/IPCallInputDialog;

    invoke-static {v4}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->access$300(Lcom/android/phone/ipcallsetting/IPCallInputDialog;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    iget-object v4, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog$3;->this$0:Lcom/android/phone/ipcallsetting/IPCallInputDialog;

    invoke-static {v4}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->access$400(Lcom/android/phone/ipcallsetting/IPCallInputDialog;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    iget-object v4, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog$3;->this$0:Lcom/android/phone/ipcallsetting/IPCallInputDialog;

    invoke-static {v4}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->access$500(Lcom/android/phone/ipcallsetting/IPCallInputDialog;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 112
    iget-object v4, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog$3;->this$0:Lcom/android/phone/ipcallsetting/IPCallInputDialog;

    invoke-static {v4, v8}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->access$600(Lcom/android/phone/ipcallsetting/IPCallInputDialog;Z)V

    .line 113
    iget-object v4, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog$3;->this$0:Lcom/android/phone/ipcallsetting/IPCallInputDialog;

    invoke-static {v4}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->access$000(Lcom/android/phone/ipcallsetting/IPCallInputDialog;)Landroid/widget/Button;

    move-result-object v4

    const v5, 0x7f0c02e9

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 114
    iget-object v4, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog$3;->this$0:Lcom/android/phone/ipcallsetting/IPCallInputDialog;

    invoke-static {v4}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->access$000(Lcom/android/phone/ipcallsetting/IPCallInputDialog;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 182
    :goto_44
    return-void

    .line 120
    :cond_45
    iget-object v4, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog$3;->this$0:Lcom/android/phone/ipcallsetting/IPCallInputDialog;

    invoke-static {v4}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->access$500(Lcom/android/phone/ipcallsetting/IPCallInputDialog;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, ipNumber:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 123
    iget-object v4, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog$3;->this$0:Lcom/android/phone/ipcallsetting/IPCallInputDialog;

    const v5, 0x7f0c02e6

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_44

    .line 129
    :cond_6a
    const/4 v1, 0x0

    .line 131
    .local v1, currentIPDialNumberID:I
    iget-object v4, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog$3;->this$0:Lcom/android/phone/ipcallsetting/IPCallInputDialog;

    invoke-static {v4, v3}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->access$100(Lcom/android/phone/ipcallsetting/IPCallInputDialog;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_80

    .line 133
    iget-object v4, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog$3;->this$0:Lcom/android/phone/ipcallsetting/IPCallInputDialog;

    const v5, 0x7f0c02ec

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_44

    .line 139
    :cond_80
    const-string v4, "InputDialogActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insert ipnumber = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 144
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v4, "_data"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_11d

    .line 148
    iget-object v4, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog$3;->this$0:Lcom/android/phone/ipcallsetting/IPCallInputDialog;

    invoke-virtual {v4}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v4, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog$3;->this$0:Lcom/android/phone/ipcallsetting/IPCallInputDialog;

    invoke-static {v4}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->access$700(Lcom/android/phone/ipcallsetting/IPCallInputDialog;)I

    move-result v4

    if-nez v4, :cond_11a

    sget-object v4, Lcom/android/phone/HWPhoneProvider;->IPCALLS_SUB1_URI:Landroid/net/Uri;

    :goto_bc
    invoke-virtual {v5, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 154
    .local v2, insertUri:Landroid/net/Uri;
    :goto_c0
    if-eqz v2, :cond_d5

    .line 157
    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 162
    :cond_d5
    iget-object v4, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog$3;->this$0:Lcom/android/phone/ipcallsetting/IPCallInputDialog;

    invoke-static {v4}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->access$200(Lcom/android/phone/ipcallsetting/IPCallInputDialog;)Z

    move-result v4

    if-eqz v4, :cond_113

    .line 165
    iget-object v4, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog$3;->this$0:Lcom/android/phone/ipcallsetting/IPCallInputDialog;

    invoke-static {v4, v7}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->access$600(Lcom/android/phone/ipcallsetting/IPCallInputDialog;Z)V

    .line 167
    if-eqz v1, :cond_fd

    .line 170
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_12a

    .line 171
    iget-object v4, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog$3;->this$0:Lcom/android/phone/ipcallsetting/IPCallInputDialog;

    invoke-virtual {v4}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog$3;->this$0:Lcom/android/phone/ipcallsetting/IPCallInputDialog;

    invoke-static {v5}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->access$700(Lcom/android/phone/ipcallsetting/IPCallInputDialog;)I

    move-result v5

    invoke-static {v4, v1, v3, v5}, Lcom/android/phone/HWPhoneProvider;->updateCurrentIPDialNumber(Landroid/content/Context;ILjava/lang/String;I)V

    .line 177
    :cond_fd
    :goto_fd
    iget-object v4, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog$3;->this$0:Lcom/android/phone/ipcallsetting/IPCallInputDialog;

    iget-object v5, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog$3;->this$0:Lcom/android/phone/ipcallsetting/IPCallInputDialog;

    invoke-static {v5}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->access$800(Lcom/android/phone/ipcallsetting/IPCallInputDialog;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->access$900(Lcom/android/phone/ipcallsetting/IPCallInputDialog;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v4, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog$3;->this$0:Lcom/android/phone/ipcallsetting/IPCallInputDialog;

    const/4 v5, -0x1

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v4, v5, v6}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->setResult(ILandroid/content/Intent;)V

    .line 181
    :cond_113
    iget-object v4, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog$3;->this$0:Lcom/android/phone/ipcallsetting/IPCallInputDialog;

    invoke-virtual {v4}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->finish()V

    goto/16 :goto_44

    .line 148
    .end local v2           #insertUri:Landroid/net/Uri;
    :cond_11a
    sget-object v4, Lcom/android/phone/HWPhoneProvider;->IPCALLS_SUB2_URI:Landroid/net/Uri;

    goto :goto_bc

    .line 151
    :cond_11d
    iget-object v4, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog$3;->this$0:Lcom/android/phone/ipcallsetting/IPCallInputDialog;

    invoke-virtual {v4}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/phone/HWPhoneProvider;->IPCALLS_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .restart local v2       #insertUri:Landroid/net/Uri;
    goto :goto_c0

    .line 173
    :cond_12a
    iget-object v4, p0, Lcom/android/phone/ipcallsetting/IPCallInputDialog$3;->this$0:Lcom/android/phone/ipcallsetting/IPCallInputDialog;

    invoke-virtual {v4}, Lcom/android/phone/ipcallsetting/IPCallInputDialog;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v3}, Lcom/android/phone/HWPhoneProvider;->updateCurrentIPDialNumber(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_fd
.end method
