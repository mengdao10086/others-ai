.class public Lcom/miui/contentextension/data/recognition/TextRecommendationInfo$SubTitle;
.super Ljava/lang/Object;
.source "TextRecommendationInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubTitle"
.end annotation


# instance fields
.field private color:Ljava/lang/String;

.field private darkColor:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColor()Ljava/lang/String;
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo$SubTitle;->color:Ljava/lang/String;

    return-object v0
.end method

.method public getDarkColor()Ljava/lang/String;
    .registers 2

    .line 175
    iget-object v0, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo$SubTitle;->darkColor:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 159
    iget-object v0, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo$SubTitle;->title:Ljava/lang/String;

    return-object v0
.end method
