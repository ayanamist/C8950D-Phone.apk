.class public Lcom/android/phone/InCallContactPhoto;
.super Landroid/widget/ImageView;
.source "InCallContactPhoto.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final ENABLE_BLUR_INSET_EFFECT:Z = false

.field private static final TAG:Ljava/lang/String; = "InCallContactPhoto"

.field private static final VDBG:Z


# instance fields
.field private mInsetImageView:Landroid/widget/ImageView;

.field private mPreviousImageDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/InCallContactPhoto;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    return-void
.end method

.method private hideInset()V
    .registers 3

    .prologue
    .line 219
    sget-boolean v0, Lcom/android/phone/InCallContactPhoto;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "- hideInset()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallContactPhoto;->log(Ljava/lang/String;)V

    .line 220
    :cond_9
    iget-object v0, p0, Lcom/android/phone/InCallContactPhoto;->mInsetImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_14

    .line 221
    iget-object v0, p0, Lcom/android/phone/InCallContactPhoto;->mInsetImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    :cond_14
    return-void
.end method

.method private isLoRes(Landroid/graphics/Bitmap;)Z
    .registers 5
    .parameter "bitmap"

    .prologue
    .line 213
    const/16 v0, 0x60

    .line 214
    .local v0, LO_RES_THRESHOLD_WIDTH:I
    sget-boolean v1, Lcom/android/phone/InCallContactPhoto;->DBG:Z

    if-eqz v1, :cond_26

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- isLoRes: checking bitmap with width "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallContactPhoto;->log(Ljava/lang/String;)V

    .line 215
    :cond_26
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    const/16 v2, 0x60

    if-gt v1, v2, :cond_30

    const/4 v1, 0x1

    :goto_2f
    return v1

    :cond_30
    const/4 v1, 0x0

    goto :goto_2f
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 234
    const-string v0, "InCallContactPhoto"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return-void
.end method

.method private showInset(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .parameter "drawable"

    .prologue
    .line 226
    sget-boolean v0, Lcom/android/phone/InCallContactPhoto;->DBG:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- showInset(Drawable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallContactPhoto;->log(Ljava/lang/String;)V

    .line 227
    :cond_20
    iget-object v0, p0, Lcom/android/phone/InCallContactPhoto;->mInsetImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2f

    .line 228
    iget-object v0, p0, Lcom/android/phone/InCallContactPhoto;->mInsetImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 229
    iget-object v0, p0, Lcom/android/phone/InCallContactPhoto;->mInsetImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 231
    :cond_2f
    return-void
.end method


# virtual methods
.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter "bm"

    .prologue
    .line 113
    sget-boolean v0, Lcom/android/phone/InCallContactPhoto;->DBG:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImageBitmap("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallContactPhoto;->log(Ljava/lang/String;)V

    .line 116
    :cond_20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallContactPhoto;->mPreviousImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 117
    invoke-direct {p0}, Lcom/android/phone/InCallContactPhoto;->hideInset()V

    .line 118
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 119
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 11
    .parameter "inputDrawable"

    .prologue
    .line 123
    sget-boolean v6, Lcom/android/phone/InCallContactPhoto;->DBG:Z

    if-eqz v6, :cond_20

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setImageDrawable("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/InCallContactPhoto;->log(Ljava/lang/String;)V

    .line 124
    :cond_20
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 126
    .local v4, startTime:J
    const/4 v0, 0x0

    .line 133
    .local v0, blurredBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v6, p0, Lcom/android/phone/InCallContactPhoto;->mPreviousImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v6, :cond_61

    .line 135
    iput-object p1, p0, Lcom/android/phone/InCallContactPhoto;->mPreviousImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 137
    instance-of v6, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_88

    move-object v6, p1

    .line 138
    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 147
    .local v3, inputBitmap:Landroid/graphics/Bitmap;
    sget-boolean v6, Lcom/android/phone/InCallContactPhoto;->DBG:Z

    if-eqz v6, :cond_3f

    const-string v6, "- blur+inset disabled; no special effect."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallContactPhoto;->log(Ljava/lang/String;)V

    .line 181
    .end local v3           #inputBitmap:Landroid/graphics/Bitmap;
    :cond_3f
    :goto_3f
    if-eqz v0, :cond_a7

    .line 182
    sget-boolean v6, Lcom/android/phone/InCallContactPhoto;->DBG:Z

    if-eqz v6, :cond_5b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- Show the special effect!  blurredBitmapDrawable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/InCallContactPhoto;->log(Ljava/lang/String;)V

    .line 184
    :cond_5b
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 186
    invoke-direct {p0, p1}, Lcom/android/phone/InCallContactPhoto;->showInset(Landroid/graphics/drawable/Drawable;)V

    .line 195
    :cond_61
    :goto_61
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 196
    .local v1, endTime:J
    sget-boolean v6, Lcom/android/phone/InCallContactPhoto;->DBG:Z

    if-eqz v6, :cond_87

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setImageDrawable() done: *ELAPSED* = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v7, v1, v4

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " msec"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/InCallContactPhoto;->log(Ljava/lang/String;)V

    .line 197
    :cond_87
    return-void

    .line 173
    .end local v1           #endTime:J
    :cond_88
    const-string v6, "InCallContactPhoto"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setImageDrawable: inputDrawable \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' is not a BitmapDrawable"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 188
    :cond_a7
    sget-boolean v6, Lcom/android/phone/InCallContactPhoto;->DBG:Z

    if-eqz v6, :cond_b0

    const-string v6, "- null blurredBitmapDrawable; don\'t show the special effect."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallContactPhoto;->log(Ljava/lang/String;)V

    .line 190
    :cond_b0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    invoke-direct {p0}, Lcom/android/phone/InCallContactPhoto;->hideInset()V

    goto :goto_61
.end method

.method public setImageResource(I)V
    .registers 4
    .parameter "resId"

    .prologue
    .line 93
    sget-boolean v0, Lcom/android/phone/InCallContactPhoto;->DBG:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImageResource("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallContactPhoto;->log(Ljava/lang/String;)V

    .line 96
    :cond_20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallContactPhoto;->mPreviousImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 97
    invoke-direct {p0}, Lcom/android/phone/InCallContactPhoto;->hideInset()V

    .line 98
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .registers 4
    .parameter "uri"

    .prologue
    .line 103
    sget-boolean v0, Lcom/android/phone/InCallContactPhoto;->DBG:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImageURI("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallContactPhoto;->log(Ljava/lang/String;)V

    .line 106
    :cond_20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallContactPhoto;->mPreviousImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 107
    invoke-direct {p0}, Lcom/android/phone/InCallContactPhoto;->hideInset()V

    .line 108
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 109
    return-void
.end method

.method public setInsetImageView(Landroid/widget/ImageView;)V
    .registers 2
    .parameter "imageView"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/phone/InCallContactPhoto;->mInsetImageView:Landroid/widget/ImageView;

    .line 89
    return-void
.end method
