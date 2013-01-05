.class Lcom/android/phone/ipcallsetting/IPCallSettings$CustumSimpleCursorAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "IPCallSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ipcallsetting/IPCallSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustumSimpleCursorAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ipcallsetting/IPCallSettings;


# direct methods
.method public constructor <init>(Lcom/android/phone/ipcallsetting/IPCallSettings;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .registers 13
    .parameter
    .parameter "context"
    .parameter "layout"
    .parameter "c"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/phone/ipcallsetting/IPCallSettings$CustumSimpleCursorAdapter;->this$0:Lcom/android/phone/ipcallsetting/IPCallSettings;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 279
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 280
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 15
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const v10, 0x7f0c02f0

    const v9, 0x1020014

    const/4 v8, 0x1

    .line 284
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 286
    const-string v5, "_id"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 288
    .local v4, ipAccount_id:I
    const-string v5, "_data"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 295
    .local v3, ipAccount_data:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v5

    if-eqz v5, :cond_88

    .line 296
    iget-object v5, p0, Lcom/android/phone/ipcallsetting/IPCallSettings$CustumSimpleCursorAdapter;->this$0:Lcom/android/phone/ipcallsetting/IPCallSettings;

    invoke-static {v5}, Lcom/android/phone/ipcallsetting/IPCallSettings;->access$000(Lcom/android/phone/ipcallsetting/IPCallSettings;)I

    move-result v5

    invoke-static {p2, v5}, Lcom/android/phone/HWPhoneProvider;->getDefaultIPDialNumberID(Landroid/content/Context;I)I

    move-result v2

    .line 297
    .local v2, currentIPAccount_id:I
    iget-object v5, p0, Lcom/android/phone/ipcallsetting/IPCallSettings$CustumSimpleCursorAdapter;->this$0:Lcom/android/phone/ipcallsetting/IPCallSettings;

    invoke-static {v5}, Lcom/android/phone/ipcallsetting/IPCallSettings;->access$000(Lcom/android/phone/ipcallsetting/IPCallSettings;)I

    move-result v5

    invoke-static {p2, v5}, Lcom/android/phone/HWPhoneProvider;->getDefaultIPDialNumberData(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, currentIPAccount_data:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/ipcallsetting/IPCallSettings;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ipAccount_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", currentIPAccount_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    if-eq v8, v4, :cond_65

    const/4 v5, 0x2

    if-ne v5, v4, :cond_6e

    .line 302
    :cond_65
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 303
    .local v0, checkTextView:Landroid/widget/CheckedTextView;
    invoke-virtual {v0, v10}, Landroid/widget/CheckedTextView;->setText(I)V

    .line 319
    .end local v0           #checkTextView:Landroid/widget/CheckedTextView;
    :cond_6e
    :goto_6e
    if-ne v4, v2, :cond_9c

    if-eqz v3, :cond_9c

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9c

    .line 322
    iget-object v5, p0, Lcom/android/phone/ipcallsetting/IPCallSettings$CustumSimpleCursorAdapter;->this$0:Lcom/android/phone/ipcallsetting/IPCallSettings;

    invoke-virtual {v5}, Lcom/android/phone/ipcallsetting/IPCallSettings;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6, v8}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 326
    :goto_87
    return-void

    .line 306
    .end local v1           #currentIPAccount_data:Ljava/lang/String;
    .end local v2           #currentIPAccount_id:I
    :cond_88
    invoke-static {p2}, Lcom/android/phone/HWPhoneProvider;->getDefaultIPDialNumberID(Landroid/content/Context;)I

    move-result v2

    .line 307
    .restart local v2       #currentIPAccount_id:I
    invoke-static {p2}, Lcom/android/phone/HWPhoneProvider;->getDefaultIPDialNumberData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 309
    .restart local v1       #currentIPAccount_data:Ljava/lang/String;
    if-ne v8, v4, :cond_6e

    .line 311
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 312
    .restart local v0       #checkTextView:Landroid/widget/CheckedTextView;
    invoke-virtual {v0, v10}, Landroid/widget/CheckedTextView;->setText(I)V

    goto :goto_6e

    .line 324
    .end local v0           #checkTextView:Landroid/widget/CheckedTextView;
    :cond_9c
    iget-object v5, p0, Lcom/android/phone/ipcallsetting/IPCallSettings$CustumSimpleCursorAdapter;->this$0:Lcom/android/phone/ipcallsetting/IPCallSettings;

    invoke-virtual {v5}, Lcom/android/phone/ipcallsetting/IPCallSettings;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_87
.end method
