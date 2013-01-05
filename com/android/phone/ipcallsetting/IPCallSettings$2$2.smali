.class Lcom/android/phone/ipcallsetting/IPCallSettings$2$2;
.super Ljava/lang/Object;
.source "IPCallSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/ipcallsetting/IPCallSettings$2;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/ipcallsetting/IPCallSettings$2;


# direct methods
.method constructor <init>(Lcom/android/phone/ipcallsetting/IPCallSettings$2;)V
    .registers 2
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/phone/ipcallsetting/IPCallSettings$2$2;->this$1:Lcom/android/phone/ipcallsetting/IPCallSettings$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 11
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 159
    iget-object v2, p0, Lcom/android/phone/ipcallsetting/IPCallSettings$2$2;->this$1:Lcom/android/phone/ipcallsetting/IPCallSettings$2;

    iget-object v2, v2, Lcom/android/phone/ipcallsetting/IPCallSettings$2;->this$0:Lcom/android/phone/ipcallsetting/IPCallSettings;

    invoke-virtual {v2}, Lcom/android/phone/ipcallsetting/IPCallSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/ipcallsetting/IPCallSettings$2$2;->this$1:Lcom/android/phone/ipcallsetting/IPCallSettings$2;

    iget v3, v3, Lcom/android/phone/ipcallsetting/IPCallSettings$2;->val$position:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 161
    .local v0, c:Landroid/database/Cursor;
    const-string v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 164
    .local v1, id:I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 165
    iget-object v2, p0, Lcom/android/phone/ipcallsetting/IPCallSettings$2$2;->this$1:Lcom/android/phone/ipcallsetting/IPCallSettings$2;

    iget-object v2, v2, Lcom/android/phone/ipcallsetting/IPCallSettings$2;->this$0:Lcom/android/phone/ipcallsetting/IPCallSettings;

    invoke-virtual {v2}, Lcom/android/phone/ipcallsetting/IPCallSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v2, p0, Lcom/android/phone/ipcallsetting/IPCallSettings$2$2;->this$1:Lcom/android/phone/ipcallsetting/IPCallSettings$2;

    iget-object v2, v2, Lcom/android/phone/ipcallsetting/IPCallSettings$2;->this$0:Lcom/android/phone/ipcallsetting/IPCallSettings;

    invoke-static {v2}, Lcom/android/phone/ipcallsetting/IPCallSettings;->access$000(Lcom/android/phone/ipcallsetting/IPCallSettings;)I

    move-result v2

    if-nez v2, :cond_4f

    sget-object v2, Lcom/android/phone/HWPhoneProvider;->IPCALLS_SUB1_URI:Landroid/net/Uri;

    :goto_3c
    const-string v4, "_id = ?"

    new-array v5, v5, [Ljava/lang/String;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 173
    :goto_4e
    return-void

    .line 165
    :cond_4f
    sget-object v2, Lcom/android/phone/HWPhoneProvider;->IPCALLS_SUB2_URI:Landroid/net/Uri;

    goto :goto_3c

    .line 169
    :cond_52
    iget-object v2, p0, Lcom/android/phone/ipcallsetting/IPCallSettings$2$2;->this$1:Lcom/android/phone/ipcallsetting/IPCallSettings$2;

    iget-object v2, v2, Lcom/android/phone/ipcallsetting/IPCallSettings$2;->this$0:Lcom/android/phone/ipcallsetting/IPCallSettings;

    invoke-virtual {v2}, Lcom/android/phone/ipcallsetting/IPCallSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/phone/HWPhoneProvider;->IPCALLS_URI:Landroid/net/Uri;

    const-string v4, "_id = ?"

    new-array v5, v5, [Ljava/lang/String;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_4e
.end method
