.class Lcom/android/phone/ADNList$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ADNList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ADNList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ADNList;


# direct methods
.method public constructor <init>(Lcom/android/phone/ADNList;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter "cr"

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    .line 245
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 246
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .registers 5
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    invoke-static {v0}, Lcom/android/phone/ADNList;->access$200(Lcom/android/phone/ADNList;)V

    .line 278
    return-void
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .registers 5
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    invoke-static {v0}, Lcom/android/phone/ADNList;->access$200(Lcom/android/phone/ADNList;)V

    .line 266
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 6
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    .line 251
    sput-object p3, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    .line 253
    invoke-static {}, Lcom/android/phone/ADNList;->access$000()I

    move-result v0

    if-nez v0, :cond_d

    .line 254
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    invoke-virtual {v0}, Lcom/android/phone/ADNList;->getFdnSize()V

    .line 257
    :cond_d
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    invoke-static {v0}, Lcom/android/phone/ADNList;->access$100(Lcom/android/phone/ADNList;)V

    .line 258
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/ADNList;->displayProgress(Z)V

    .line 259
    return-void
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .registers 5
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/phone/ADNList$QueryHandler;->this$0:Lcom/android/phone/ADNList;

    invoke-static {v0}, Lcom/android/phone/ADNList;->access$200(Lcom/android/phone/ADNList;)V

    .line 272
    return-void
.end method
