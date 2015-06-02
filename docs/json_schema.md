```json
{
  "type":"object",
  "$schema": "http://json-schema.org/draft-03/schema",
  "id": "http://jsonschema.net",
  "required":false,
  "properties":{
    "brand": {
      "type":"object",
      "description": "Details of the brand that this collection is a part of.",
      "id": "http://jsonschema.net/brand",
      "required":true,
      "properties":{
        "id": {
          "type":"number",
          "id": "http://jsonschema.net/brand/id",
          "required":false
        },
        "name": {
          "type":"string",
          "id": "http://jsonschema.net/brand/name",
          "required":false
        }
      }
    },
    "content": {
      "type":"array",
      "description": "An Array of social posts or content.",
      "id": "http://jsonschema.net/content",
      "required":true,
      "items":
        {
          "type":"object",
          "id": "http://jsonschema.net/content/0",
          "required":false,
          "properties":{
            "actor": {
              "type":"object",
              "description": "Details about the content creator",
              "id": "http://jsonschema.net/content/0/actor",
              "required":true,
              "properties":{
                "bio": {
                  "type":"null",
                  "id": "http://jsonschema.net/content/0/actor/bio",
                  "required":false
                },
                "handle_name": {
                  "type":"string",
                  "id": "http://jsonschema.net/content/0/actor/handle_name",
                  "required":false
                },
                "image_url": {
                  "type":"string",
                  "id": "http://jsonschema.net/content/0/actor/image_url",
                  "required":false
                },
                "name": {
                  "type":"string",
                  "id": "http://jsonschema.net/content/0/actor/name",
                  "required":false
                },
                "social_id": {
                  "type":"string",
                  "id": "http://jsonschema.net/content/0/actor/social_id",
                  "required":false
                },
                "url": {
                  "type":"string",
                  "id": "http://jsonschema.net/content/0/actor/url",
                  "required":false
                }
              }
            },
            "content_index": {
              "type":"string",
              "description": "The index in which the content is stored",
              "id": "http://jsonschema.net/content/0/content_index",
              "required":true
            },
            "content_source": {
              "type":"string",
              "description": "Source of the content",
              "id": "http://jsonschema.net/content/0/content_source",
              "required":true
            },
            "external_conversation_link": {
              "type":"null",
              "id": "http://jsonschema.net/content/0/external_conversation_link",
              "required":false
            },
            "has_media": {
              "type":"boolean",
              "id": "http://jsonschema.net/content/0/has_media",
              "required":false
            },
            "media": {
              "type":"object",
              "id": "http://jsonschema.net/content/0/media",
              "required":false,
              "properties":{
                "images": {
                  "type":"array",
                  "id": "http://jsonschema.net/content/0/media/images",
                  "required":false,
                  "items":
                    {
                      "type":"object",
                      "id": "http://jsonschema.net/content/0/media/images/0",
                      "required":false,
                      "properties":{
                        "height": {
                          "type":"number",
                          "id": "http://jsonschema.net/content/0/media/images/0/height",
                          "required":false
                        },
                        "type": {
                          "type":"string",
                          "id": "http://jsonschema.net/content/0/media/images/0/type",
                          "required":false
                        },
                        "url": {
                          "type":"string",
                          "id": "http://jsonschema.net/content/0/media/images/0/url",
                          "required":false
                        },
                        "width": {
                          "type":"number",
                          "id": "http://jsonschema.net/content/0/media/images/0/width",
                          "required":false
                        }
                      }
                    }


                }
              }
            },
            "products": {
              "type":"array",
              "description": "List of Products associated with this content. Products are part of the eCommerce catalog that the brand has configured with ReadyPulse",
              "id": "http://jsonschema.net/content/0/products",
              "required":false,
              "items":
                {
                  "type":"object",
                  "id": "http://jsonschema.net/content/0/products/0",
                  "required":false,
                  "properties":{
                    "description": {
                      "type":"string",
                      "id": "http://jsonschema.net/content/0/products/0/description",
                      "required":false
                    },
                    "image": {
                      "type":"string",
                      "id": "http://jsonschema.net/content/0/products/0/image",
                      "required":false
                    },
                    "name": {
                      "type":"string",
                      "id": "http://jsonschema.net/content/0/products/0/name",
                      "required":false
                    },
                    "price": {
                      "type":"string",
                      "id": "http://jsonschema.net/content/0/products/0/price",
                      "required":false
                    },
                    "thumbnail_image_url": {
                      "type":"null",
                      "id": "http://jsonschema.net/content/0/products/0/thumbnail_image_url",
                      "required":false
                    },
                    "tiny_image_url": {
                      "type":"null",
                      "id": "http://jsonschema.net/content/0/products/0/tiny_image_url",
                      "required":false
                    },
                    "url": {
                      "type":"string",
                      "id": "http://jsonschema.net/content/0/products/0/url",
                      "required":false
                    }
                  }
                }
            },
            "readypulse_content_score": {
              "type":"number",
              "id": "http://jsonschema.net/content/0/readypulse_content_score",
              "required":false
            },
            "sentiment": {
              "type":"string",
              "id": "http://jsonschema.net/content/0/sentiment",
              "required":false
            },
            "social_attributes": {
              "type":"object",
              "id": "http://jsonschema.net/content/0/social_attributes",
              "required":false
            },
            "story_url": {
              "type":"string",
              "id": "http://jsonschema.net/content/0/story_url",
              "required":false
            },
            "timestamp": {
              "type":"string",
              "id": "http://jsonschema.net/content/0/timestamp",
              "required":false
            },
            "type": {
              "type":"string",
              "id": "http://jsonschema.net/content/0/type",
              "required":false
            },
            "uniq_id": {
              "type":"string",
              "description": "The unique content ID within ReadyPulse indexes",
              "id": "http://jsonschema.net/content/0/uniq_id",
              "required":true
            },
            "id": {
              "type":"string",
              "description": "The unique content ID within ReadyPulse indexes. To be used with all ReadyPulse API calls.",
              "id": "http://jsonschema.net/content/0/id",
              "required":true
            },
            "user_text": {
              "type":"string",
              "id": "http://jsonschema.net/content/0/user_text",
              "required":false
            }
          }
        }


    },
    "created_at": {
      "type":"string",
      "id": "http://jsonschema.net/created_at",
      "required":false
    },
    "description": {
      "type":"string",
      "id": "http://jsonschema.net/description",
      "required":false
    },
    "id": {
      "type":"number",
      "description": "ID of the collection",
      "id": "http://jsonschema.net/id",
      "required":true
    },
    "item_count": {
      "type":"number",
      "description": "Number of items in the collection",
      "id": "http://jsonschema.net/item_count",
      "required":true
    },
    "name": {
      "type":"string",
      "id": "http://jsonschema.net/name",
      "required":false
    },
    "readypulse_user": {
      "type":"object",
      "id": "http://jsonschema.net/readypulse_user",
      "required":false,
      "properties":{
        "id": {
          "type":"number",
          "id": "http://jsonschema.net/readypulse_user/id",
          "required":false
        },
        "name": {
          "type":"string",
          "id": "http://jsonschema.net/readypulse_user/name",
          "required":false
        }
      }
    },
    "type": {
      "type":"string",
      "id": "http://jsonschema.net/type",
      "required":false
    },
    "updated_at": {
      "type":"string",
      "id": "http://jsonschema.net/updated_at",
      "required":false
    }
  }
}
```
