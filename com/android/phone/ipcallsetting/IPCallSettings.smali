.class public Lcom/android/phone/ipcallsetting/IPCallSettings;
.super Landroid/app/ListActivity;
.source "IPCallSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/ipcallsetting/IPCallSettings$CustumSimpleCursorAdapter;
    }
.end annotation


# static fields
.field private static final CATEGROY_INPUT:Ljava/lang/String; = "com.android.ipcallsetting.INPUT"

.field private static final CONTEXT_MENU_ITEM_DEL_ACCOUNT:I = 0x1

.field private static final MENU_ITEM_ADD_ACCOUNT:I = 0x1

.field private static final POSITION_ZERO:I

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mCursor:Landroid/database/Cursor;

.field private mSubscription:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const-string v0, "IPCallSettings"

    sput-object v0, Lcom/android/phone/ipcallsetting/IPCallSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/ipcallsetting/IPCallSettings;->mSubscription:I

    .line 276
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/ipcallsetting/IPCallSettings;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/phone/ipcallsetting/IPCallSettings;->mSubscription:I

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/phone/ipcallsetting/IPCallSettings;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addNewIPAccount()V
    .registers 4

    .prologue
    .line 219
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 220
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/ipcallsetting/IPCallInputDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 222
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "subscription"

    iget v2, p0, Lcom/android/phone/ipcallsetting/IPCallSettings;->mSubscription:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 228
    :goto_18
    invoke-virtual {p0, v0}, Lcom/android/phone/ipcallsetting/IPCallSettings;->startActivity(Landroid/content/Intent;)V

    .line 229
    return-void

    .line 224
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "com.android.ipcallsetting.INPUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_18
.end method

.method private init()V
    .registers 11

    .prologue
    .line 77
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 78
    invoke-virtual {p0}, Lcom/android/phone/ipcallsetting/IPCallSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/ipcallsetting/IPCallSettings;->mSubscription:I

    if-nez v1, :cond_69

    sget-object v1, Lcom/android/phone/HWPhoneProvider;->IPCALLS_SUB1_URI:Landroid/net/Uri;

    :goto_14
    sget-object v2, Lcom/android/phone/ipcallsetting/IPCallUtils;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallSettings;->mCursor:Landroid/database/Cursor;

    .line 84
    :goto_1f
    new-instance v0, Lcom/android/phone/ipcallsetting/IPCallSettings$CustumSimpleCursorAdapter;

    const v3, 0x109000f

    iget-object v4, p0, Lcom/android/phone/ipcallsetting/IPCallSettings;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_data"

    aput-object v2, v5, v1

    const/4 v1, 0x1

    new-array v6, v1, [I

    const/4 v1, 0x0

    const v2, 0x1020014

    aput v2, v6, v1

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/ipcallsetting/IPCallSettings$CustumSimpleCursorAdapter;-><init>(Lcom/android/phone/ipcallsetting/IPCallSettings;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallSettings;->mAdapter:Landroid/widget/ListAdapter;

    .line 91
    invoke-virtual {p0}, Lcom/android/phone/ipcallsetting/IPCallSettings;->getListView()Landroid/widget/ListView;

    move-result-object v9

    .line 92
    .local v9, listView:Landroid/widget/ListView;
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 93
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 96
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 97
    .local v8, inflater:Landroid/view/LayoutInflater;
    const v0, 0x7f040001

    invoke-virtual {p0}, Lcom/android/phone/ipcallsetting/IPCallSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 99
    .local v7, headerView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/phone/ipcallsetting/IPCallSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v7, v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 101
    iget-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallSettings;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/phone/ipcallsetting/IPCallSettings;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 102
    return-void

    .line 78
    .end local v7           #headerView:Landroid/view/View;
    .end local v8           #inflater:Landroid/view/LayoutInflater;
    .end local v9           #listView:Landroid/widget/ListView;
    :cond_69
    sget-object v1, Lcom/android/phone/HWPhoneProvider;->IPCALLS_SUB2_URI:Landroid/net/Uri;

    goto :goto_14

    .line 81
    :cond_6c
    invoke-virtual {p0}, Lcom/android/phone/ipcallsetting/IPCallSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/HWPhoneProvider;->IPCALLS_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/ipcallsetting/IPCallUtils;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallSettings;->mCursor:Landroid/database/Cursor;

    goto :goto_1f
.end method

.method private registerOnCreateContextMenuListener()V
    .registers 3

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/android/phone/ipcallsetting/IPCallSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/phone/ipcallsetting/IPCallSettings$1;

    invoke-direct {v1, p0}, Lcom/android/phone/ipcallsetting/IPCallSettings$1;-><init>(Lcom/android/phone/ipcallsetting/IPCallSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 141
    return-void
.end method


# virtual methods
.method public createDeleteContextMenu(Landroid/view/ContextMenu;I)V
    .registers 6
    .parameter "menu"
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 149
    const/4 v0, 0x1

    const v1, 0x7f0c02e7

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/phone/ipcallsetting/IPCallSettings$2;

    invoke-direct {v1, p0, p2}, Lcom/android/phone/ipcallsetting/IPCallSettings$2;-><init>(Lcom/android/phone/ipcallsetting/IPCallSettings;I)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 187
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f040002

    invoke-virtual {p0, v0}, Lcom/android/phone/ipcallsetting/IPCallSettings;->setContentView(I)V

    .line 61
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 62
    invoke-virtual {p0}, Lcom/android/phone/ipcallsetting/IPCallSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "subscription"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/ipcallsetting/IPCallSettings;->mSubscription:I

    .line 63
    sget-object v0, Lcom/android/phone/ipcallsetting/IPCallSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSubscription = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/ipcallsetting/IPCallSettings;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :goto_3a
    invoke-direct {p0}, Lcom/android/phone/ipcallsetting/IPCallSettings;->init()V

    .line 71
    invoke-direct {p0}, Lcom/android/phone/ipcallsetting/IPCallSettings;->registerOnCreateContextMenuListener()V

    .line 72
    return-void

    .line 65
    :cond_41
    sget-object v0, Lcom/android/phone/ipcallsetting/IPCallSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "else part is executed mSubscription = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/ipcallsetting/IPCallSettings;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallSettings;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_10

    .line 267
    sget-object v0, Lcom/android/phone/ipcallsetting/IPCallSettings;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy, close the cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v0, p0, Lcom/android/phone/ipcallsetting/IPCallSettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 273
    :cond_10
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 274
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 12
    .parameter "listView"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 234
    if-nez p3, :cond_6

    .line 237
    invoke-direct {p0}, Lcom/android/phone/ipcallsetting/IPCallSettings;->addNewIPAccount()V

    .line 261
    :goto_5
    return-void

    .line 240
    :cond_6
    if-lez p3, :cond_49

    .line 242
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 243
    .local v0, c:Landroid/database/Cursor;
    const-string v3, "_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 245
    .local v2, ipAccountID:I
    const-string v3, "_data"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, ipAccount:Ljava/lang/String;
    sget-object v3, Lcom/android/phone/ipcallsetting/IPCallSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update current ipnumber = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 253
    iget v3, p0, Lcom/android/phone/ipcallsetting/IPCallSettings;->mSubscription:I

    invoke-static {p0, v2, v1, v3}, Lcom/android/phone/HWPhoneProvider;->updateCurrentIPDialNumber(Landroid/content/Context;ILjava/lang/String;I)V

    .line 260
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #ipAccount:Ljava/lang/String;
    .end local v2           #ipAccountID:I
    :cond_49
    :goto_49
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    goto :goto_5

    .line 255
    .restart local v0       #c:Landroid/database/Cursor;
    .restart local v1       #ipAccount:Ljava/lang/String;
    .restart local v2       #ipAccountID:I
    :cond_4d
    invoke-static {p0, v2, v1}, Lcom/android/phone/HWPhoneProvider;->updateCurrentIPDialNumber(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_49
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 200
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_10

    .line 207
    :goto_7
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 202
    :pswitch_c
    invoke-direct {p0}, Lcom/android/phone/ipcallsetting/IPCallSettings;->addNewIPAccount()V

    goto :goto_7

    .line 200
    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 191
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 192
    const/4 v0, 0x1

    const v1, 0x7f0c02e5

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 195
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
